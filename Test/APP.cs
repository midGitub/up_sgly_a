using System;
using System.Collections.Generic;

using UnityEngine;
using UnityEngine.UI;

using JOSophia;
using AF;

public class APP : MonoBehaviour
{
    public string connectIp = "";
    public int connectPort = 0;
    public int connectType = 1001;
    AssetBundle assetbundle;
    public RectTransform A;
    public RectTransform B;
    public ushort layoutType = 1;
    public float offsetX = 0;
    public float offsetY = 0;
    public void ConnectS()
    {
        //JONetwork.Ins.Connect(connectIp, connectPort);
        ResMgr.Ins.SetIsUseRes(false);
        UnityEngine.Object prefab = ResMgr.Ins.Load("Test/Image1 (1).prefab");
        GameObject go = GameObject.Instantiate(prefab, Vector3.zero, Quaternion.identity, LayerMgr.Ins.GetLayer(LayerMgr.GUIDE)) as GameObject;
        go.transform.localPosition = Vector3.zero;

        /*
        Sprite uo = ResManager.Ins.Load("icon_bujixiang1.png", ResManager.SPRITE1) as Sprite;
        GameObject go = new GameObject();
        Image img = go.AddComponent<Image>();
        img.sprite = uo;
        LayerManager.Ins.SetWin(go.transform, LayerManager.DEBUG);
         * */
    }
    public void SendText()
    {
        JOByteArray byteArray = new JOByteArray();
        byteArray.WriteInt(connectType);
        byteArray.WriteInt(999);
        byteArray.WriteUTF("Hello you!");
        byteArray.WriteFloat(0.8f);
        //JONetwork.Ins.SendMessage(byteArray);
        JOEventMgr.Ins.DispatchLocalEvent(987, byteArray);
        /*

        //byteArray.Seek(0);
        byteArray.Position = 0;
        Debug.Log("1111111111111111111111111");
        JOLog.Ins.Info("app", "ReadInt {0}",byteArray.ReadInt());
        JOLog.Ins.Info("app", "ReadFloat {0}", byteArray.ReadFloat());
        JOLog.Ins.Info("app", byteArray.ReadUTF());
        JOLog.Ins.Info("app", byteArray.ReadUTF());
        */

        //JOLog.Ins.Error("abc", "hohohohoohohoho");
    }
    void Awake()
    {
        //JOEventMgr.Ins.AddNetHandler((uint)connectType, _TestEventHandler);
        JOEventMgr.Ins.AddLocalHandler(987, _TestEventHandler);

        JOABBuilderMgr.Ins.AddParsePath("Assets/StreamingAssets/Win");

        //ResManager.Ins.SetIsUseRes(true);

        //uint sn = ResManager.Ins.LoadAsync("Test/Image1 (1).prefab", ResManager.PREFAB, (UnityEngine.Object prefab) =>
        //{
        //    GameObject go = GameObject.Instantiate(prefab, Vector3.zero, Quaternion.identity, LayerManager.Ins.GetLayer(LayerManager.GUIDE)) as GameObject;
        //    go.transform.localPosition = Vector3.zero;

        //    ResManager.Ins.UnLoad("Image1 (1).prefab");
        //});
    }

    void _TestEventHandler(uint eventID, JOByteArray args) {
        JOLog.Ins.Info("app", "eventID {0}", eventID);
        JOLog.Ins.Info("app", "ReadInt {0}", args.ReadInt());
        JOLog.Ins.Info("app", "ReadInt {0}", args.ReadInt());
        JOLog.Ins.Info("app", "ReadUTF {0}", args.ReadUTF());
        JOLog.Ins.Info("app", "ReadFloat {0}", args.ReadFloat());
    }

    void Start()
    {
        //CreatImage(loadSprite("icon_bujixiang4"));
        //CreatImage(loadSprite("icon_bujixiang2"));

        
        //ResManager.Ins.CancelLoadAsync(sn);

        //UnityEngine.Object prefab = ResManager.Ins.Load("Test/Image1 (1).prefab", ResManager.PREFAB);
        //GameObject go = GameObject.Instantiate(prefab, Vector3.zero, Quaternion.identity, LayerManager.Ins.GetLayer(LayerManager.GUIDE)) as GameObject;
        //go.transform.localPosition = Vector3.zero;

        //B.anchoredPosition3D = A.anchoredPosition3D;
        //B.position = A.position;
        //Vector3 v3 = Camera.main.ScreenToWorldPoint(A.localPosition);
        //Camera.main.
        
    }
    void Update()
    {
        Debug.Log(A.position);
        JORLayouMgr.Ins.RelativePos(A, B, layoutType, offsetX, offsetY);
        /*
        Vector3 v = A.position;
        v.x += (70 * CS.localScale.x);
        B.position = v;
         * /
        /*
        Vector3 v = Camera.main.WorldToScreenPoint(A.position);
        v.x += 70 * CS.scaleFactor;
        B.position = Camera.main.ScreenToWorldPoint(v);
        */
        /*
        Vector3 v = A.position;
        v.x += 70;
        B.position = v;
        */
    }
    private void CreatImage(Sprite sprite)
    {
        GameObject go = new GameObject(sprite.name);
        go.layer = LayerMask.NameToLayer("UI");
        LayerMgr.Ins.SetWin(go.transform, LayerMgr.TIPS);

        go.transform.localPosition = Vector3.one;
        go.transform.localScale = Vector3.one;
        Image image = go.AddComponent<Image>();
        image.sprite = sprite;
        image.SetNativeSize();
    }

    private Sprite loadSprite(string spriteName)
    {
        
        if (assetbundle == null)
        {
            assetbundle = AssetBundle.LoadFromFile(Application.streamingAssetsPath + "/Win/cf6882d7f24ad632f0372f362946280f");
        }
        AssetBundleManifest abManifest = (AssetBundleManifest)assetbundle.LoadAsset("assetbundlemanifest");
        
        return assetbundle.LoadAsset(spriteName) as Sprite;

        //return Resources.Load<GameObject>("UI/SourceAtlas/" + spriteName).GetComponent<SpriteRenderer>().sprite;
    }
}
