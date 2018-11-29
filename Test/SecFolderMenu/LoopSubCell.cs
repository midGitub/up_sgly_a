using System;
using UnityEngine;
//using UnityEngine.Events;
//using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;

namespace AF
{
    /// <summary>
    /// The base class for cells in a TableView. ITableViewDataSource returns pointers
    /// to these objects
    /// </summary>
    public class LoopSubCell : MonoBehaviour, IPointerClickHandler
    {
        RectTransform m_rectTrans;
        private LayoutElement m_layoutElement;
        private string m_identifier;
        protected int m_rowNumber;
        private Selectable m_selectable;
        protected Action<int> m_touchCall;

        void Awake()
        {
            m_rectTrans = GetComponent<RectTransform>();
        }

        public RectTransform GetRTrans()
        {
            return m_rectTrans;
        }

        /// <summary>
        /// TableView will cache unused cells and reuse them according to their
        /// reuse identifier. Override this to add custom cache grouping logic.
        /// </summary>
        public string Identifier()
        {
            return m_identifier;
        }
        public void SetIdentifier(string identifier)
        {
            m_identifier = identifier;
            gameObject.name = identifier;
        }
        public void SetTouchCall(Action<int> call)
        {
            m_touchCall = call;
        }
        public void SetInteractable(bool isInteractable)
        {
            m_selectable.interactable = isInteractable;
        }
        /// <summary>
        /// 取得当前Cell所在的行数
        /// </summary>
        /// <returns></returns>
        public int RowNumber()
        {
            return m_rowNumber;
        }

        public void SetRowNumber(int num)
        {
            m_rowNumber = num;
        }


        public void InitLayout()
        {
            m_layoutElement = gameObject.GetComponent<LayoutElement>();
            if (m_layoutElement == null)
                m_layoutElement = gameObject.AddComponent<LayoutElement>();
        }

        public void InitSelectable()
        {
            m_selectable = gameObject.GetComponent<Selectable>();
            if (m_selectable == null)
                m_selectable = gameObject.AddComponent<Selectable>();
        }

        public void SetPreferredHeight(float h)
        {
            m_layoutElement.preferredHeight = h;
        }
        public void SetPreferredWidth(float w)
        {
            m_layoutElement.preferredWidth = w;
        }
        public void SetPreferredHeightOffset(float offsetH)
        {
            m_layoutElement.preferredHeight += offsetH;
        }
        public void SetPreferredWidthOffset(float offsetW)
        {
            m_layoutElement.preferredWidth += offsetW;
        }
        public virtual void OnPointerClick(PointerEventData eventData)
        {
            if (m_touchCall != null)
                m_touchCall(m_rowNumber);
        }


    }
}
