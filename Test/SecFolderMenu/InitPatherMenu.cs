using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;
using System.Collections.Generic;

public delegate void ScrollToIndex(int dex);
namespace AF
{
    [RequireComponent(typeof(UnityEngine.UI.LoopScrollRect))]
    [DisallowMultipleComponent]
    public class InitPatherMenu : MonoBehaviour
    {
        [NonSerialized]
        public LoopScrollRect ls;
        public int totalCount;                 //父层总个数
        public Dictionary<string, string> m_BtnPrefabPath;
        #region TxT文本测试
        private TextAsset textAsset;
        private int[] cntArr;

        public void SetSupMenuMap()           //初始化加载文本数据
        {
            textAsset = Resources.Load<TextAsset>("Prefabs/UI/Widget/SecMenuUI/menuInfo");
            var info = textAsset.text.Split(',');
            totalCount = info.Length;           
        }

        public void SetPrefabPath(string FatherCellName, string CellPath)
        {
            if (m_BtnPrefabPath == null)
            {
                m_BtnPrefabPath = new Dictionary<string, string>();
            }
            if (m_BtnPrefabPath.ContainsKey(FatherCellName))
            {
                UnityEngine.Debug.LogWarningFormat("{0} prefabPath is have", FatherCellName);
                return;
            }
            m_BtnPrefabPath[FatherCellName] = CellPath;
        }


        #endregion

        void Awake()
        {
            SetSupMenuMap();
        }
        void Start()
        {
            InitPather();
        }

        void InitPather()
        {
            ls = GetComponent<LoopVerticalScrollRect>();
            //ls.totalCount = totalCount;
            ls.RefillCells();
        }

        public void RecSubCellMessage(int idx)
        {
            ls.SrollToCell(idx,900);
            BroadcastMessage("RecChangeBtnState", idx);
        }
    }
}
