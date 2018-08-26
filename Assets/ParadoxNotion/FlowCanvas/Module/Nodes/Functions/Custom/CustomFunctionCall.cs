using System.Linq;
using UnityEngine;
using ParadoxNotion.Design;
using System.Collections.Generic;
using NodeCanvas.Framework;
using System;

namespace FlowCanvas.Nodes
{
    //[DoNotList]
    [Name("Function Call")]
    [Description("Calls an existing Custom Function")]
    [Category("Functions/Custom")]
    [ParadoxNotion.Serialization.DeserializeFrom("FlowCanvas.Nodes.RelayFlowInput")]
    public class CustomFunctionCall : FlowControlNode {
#if UNITY_EDITOR
        protected override UnityEngine.GUIStyle nodeGUIType()
        {
            return NodeCanvas.Editor.CanvasStyles.window_nested;
        }
#endif
        [SerializeField]
        private string _sourceOutputUID;
        private string sourceFunctionUID{
            get { return _sourceOutputUID; }
            set { _sourceOutputUID = value; }
        }

        private ValueInput[] portArgs;
        private object[] objectArgs;
        private FlowOutput fOut;

        private object _sourceFunction;
        public CustomFunctionEvent sourceFunction{
            get
            {
                if (_sourceFunction == null){
                    _sourceFunction = graph.GetAllNodesOfType<CustomFunctionEvent>().FirstOrDefault(i => i.UID == sourceFunctionUID);
                    if (_sourceFunction == null){
                        _sourceFunction = new object();
                    }
                }
                return _sourceFunction as CustomFunctionEvent;
            }
            set { _sourceFunction = value; }
        }

        public override string name{
            get { return string.Format("Call {0} ()", sourceFunction != null? sourceFunction.identifier.value : "NONE"); }
        }

        public override string description{
            get {return sourceFunction != null && !string.IsNullOrEmpty(sourceFunction.comments)? sourceFunction.comments : base.description; }
        }

        //...
        public void SetFunction(CustomFunctionEvent func){
            sourceFunctionUID = func != null? func.UID : null;
            sourceFunction = func != null? func : null;
            GatherPorts();
        }

        //...
        protected override void RegisterPorts(){
            AddFlowInput(" ", Invoke);
            if (sourceFunction != null){
                var parameters = sourceFunction.parameters;
                portArgs = new ValueInput[parameters.Count];
                for (var _i = 0; _i < parameters.Count; _i++){
                    var i = _i;
                    var parameter = parameters[i];
                    portArgs[i] = AddValueInput(parameter.name, parameter.type, parameter.ID);
                }

                if (sourceFunction.returns.type != null){
                    AddValueOutput(sourceFunction.returns.name, sourceFunction.returns.ID, sourceFunction.returns.type, sourceFunction.GetReturnValue);
                }

                fOut = AddFlowOutput(" ");
            }
        }

        //...
        void Invoke(Flow f){
            if (sourceFunction != null){
                if (objectArgs == null){
                    objectArgs = new object[portArgs.Length];
                }
                for (var i = 0; i < portArgs.Length; i++){
                    objectArgs[i] = portArgs[i].value;
                }
                sourceFunction.InvokeAsync(f, fOut.Call, objectArgs);
                
                // sourceFunction.Invoke(f, objectArgs);
                // fOut.Call(f);
            }
        }

        ///----------------------------------------------------------------------------------------------
        ///---------------------------------------UNITY EDITOR-------------------------------------------
        #if UNITY_EDITOR

        protected override void OnNodeInspectorGUI(){
            if (GUILayout.Button("Refresh")){ GatherPorts(); }
            //if (sourceFunction == null){
                var functions = graph.GetAllNodesOfType<CustomFunctionEvent>();
                var currentFunc = functions.FirstOrDefault(i => i.UID == sourceFunctionUID);
                var newFunc = EditorUtils.Popup<CustomFunctionEvent>("Target Function", currentFunc, functions);
                if (newFunc != currentFunc){
                    SetFunction(newFunc);
                }
            //}
            base.OnNodeInspectorGUI();
        }

        #endif
        ///----------------------------------------------------------------------------------------------
    }

    //[DoNotList]
    [Name("Function Call(CustomPort)")]
    [Description("Calls an existing Custom Function,不支持在function中增加延时节点")]
    [Category("Functions/Custom")]
    [ParadoxNotion.Serialization.DeserializeFrom("FlowCanvas.Nodes.RelayFlowInput")]
    public class FunctionCall : FlowControlNode
    {
#if UNITY_EDITOR
        protected override UnityEngine.GUIStyle nodeGUIType()
        {
            return NodeCanvas.Editor.CanvasStyles.window_nested;
        }
#endif
        bool searchOnce = false;
        IInvokable func = null;

        //[SerializeField]
        public string functionName;
        public string FunctionName { get { return functionName; }
            set
            {
                if(functionName!=value)
                {
                    functionName = value;
                    GatherPorts();
                }
            }
        }
        [SerializeField]
        [ExposeField]
        [GatherPortsCallback]
        [MinValue(0)]
        [DelayedField]
        private int _portCount = 0;
        public int portCount
        {
            get { return _portCount; }
            set
            {
                _portCount = value;
                GatherPorts();
            }
        }
        public override string name
        {
            get { return string.Format("Call {0} ()", !string.IsNullOrEmpty(FunctionName) ? functionName : "NONE"); }
        }

        public bool callable = true;
        //...
        object[] objectArgs;
        object outArg;
        List<ValueInput<object>> portArgs=new List<ValueInput<object>>();

        private FlowOutput fOut;

        [SerializeField]
        Type returnType;

        public object GetReturnValue()
        {
            if (!callable)
            {
                GetFunctionResult();
            }
            return outArg;
        }
        ValueInput<GraphOwner> graphOwner;
        //...
        protected override void RegisterPorts()
        {   
            if(callable)
                AddFlowInput(" ", Invoke);
            graphOwner = AddValueInput<GraphOwner>("GraphOwner");

            portArgs = new List<ValueInput<object>>();
            for (var i = 0; i < _portCount; i++)
            {
                portArgs.Add(AddValueInput<object>("arg_"+i, "arg_" + i));
            }
            if (callable)
                fOut = AddFlowOutput(" ");
            if(returnType!=null)
                AddValueOutput("value", returnType, GetReturnValue);
        }

        //...
        void Invoke(Flow f)
        {
            GetFunctionResult();
            if (func != null&&callable)
            {
                fOut.Call(f);
            }
        }

        void GetFunctionResult()
        {
            if (!searchOnce)
            {   
                searchOnce = true;
                objectArgs = new object[portArgs.Count];
                if (string.IsNullOrEmpty(functionName))
                {
                    Debug.Log("FunctionName can't be null",graph.agent.gameObject);
                }
                List <Graph> nestedGraph = new List<Graph>();
                nestedGraph = graphOwner.value.graph.GetAllNestedGraphs<Graph>(true);
                nestedGraph.Add(graph);
                foreach (var g in nestedGraph)
                {
                    if (g.GetType() == typeof(FlowGraph) || g.GetType().IsSubclassOf(typeof(FlowGraph)))
                    {
                        var dict = ((FlowGraph)g).GetFunctions();
                        if (dict != null && dict.Count > 0)
                        {
                            foreach (var d in dict)
                            {   
                                if(functionName==d.Key)
                                    func= d.Value;
                            }
                        }
                    }
                }
            }
            for (var i = 0; i < portArgs.Count; i++)
            {               
                objectArgs[i] = portArgs[i].value;
            }
            if (func!=null)
            {
                outArg = func.Invoke(objectArgs);
            }else
            {
                Debug.LogWarning("Can't Find Function:"+functionName);
            }
        }

        ///----------------------------------------------------------------------------------------------
        ///---------------------------------------UNITY EDITOR-------------------------------------------
#if UNITY_EDITOR
        
        protected override void OnNodeInspectorGUI()
        {   
            if (GUILayout.Button("Refresh")) { GatherPorts(); }

            EditorUtils.ButtonTypePopup("Return Type", returnType, (t) => { returnType=t; GatherPorts(); });
            if (GUILayout.Button("ResetType"))
            {
                returnType = null;
            }

            base.OnNodeInspectorGUI();
            GUILayout.BeginVertical();
            GUILayout.Space(10f);

            GUILayout.BeginHorizontal();
            GUILayout.Space(30f);
            if (GUILayout.Button("+", GUILayout.Width(60)))
            {
                portCount++;
            }
            GUILayout.Space(10f);
            if (GUILayout.Button("-", GUILayout.Width(60)))
            {
                portCount--;
            }
            GUILayout.EndHorizontal();
            GUILayout.Space(10f);
            GUILayout.EndVertical();
        }

#endif
        ///----------------------------------------------------------------------------------------------
    }
}