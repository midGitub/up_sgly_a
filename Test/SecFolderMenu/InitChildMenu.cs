using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;
using System.Collections.Generic;

namespace AF
{
    public delegate void ScrollToIndex(int dex);
    [RequireComponent(typeof(UnityEngine.UI.LoopScrollRect))]
    [DisallowMultipleComponent]
    public class InitChildMenu : MonoBehaviour
    {
        private TextAsset textAsset;
        private int[] cntArr;              //所有菜单信息
        public ScrollToIndex ScrollToIdx;
        public ScrollIndexCallback4 scrollIndexCall;
        public LoopVerticalScrollRect ls;
        public int SetViewNum = 6;         //设置可视个数 
        private float m_CellHight;
        public void SetSupMenuMap(int idx)
        {
            scrollIndexCall.onListenInit = ScrollStart;
            scrollIndexCall.onListEnd = ScrollEnd;
            scrollIndexCall.onGetConCellH = GetConCellHight;
            //加载初始资源
            textAsset = Resources.Load<TextAsset>("Prefabs/UI/Widget/SecMenuUI/menuInfo");
            var info = textAsset.text.Split(',');    //获取子菜单个数信息
            cntArr = new int[info.Length];
            for (int i = 0; i < cntArr.Length; i++)
            {
                cntArr[i] = int.Parse(info[i]);
            }
            ls = GetComponent<LoopVerticalScrollRect>();
            m_CellHight = ls.GetPrefabRect();
        }

        //设定子菜单的显示的个数
        float GetConCellHight(int idx)
        {
            if (cntArr[idx] > SetViewNum)
            {
                return SetViewNum * m_CellHight;
            }
            else {
                return cntArr[idx] * m_CellHight;
            }
        }
        void ScrollStart(int index)
        {
            //ls.totalCount = cntArr[index];
            ls.RefillCells();
        }
        void ScrollEnd(int index)
        {
            ls.ClearCells();
        }
    }
}