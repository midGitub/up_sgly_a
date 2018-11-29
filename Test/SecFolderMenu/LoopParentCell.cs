using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

using JOSophia;

namespace AF
{
    public class LoopParentCell : LoopSubCell
    {
        bool m_isOpening;
        float m_openSize;
        string m_subScrollPrefabName;
        LoopScrollRect m_subScrollRect;
        LoopScrollRect m_rootScrollRect;

        public virtual void OnPointerClick(PointerEventData eventData)
        {
            base.OnPointerClick(eventData);
            if (m_isOpening)
            {
                if (m_subScrollRect == null)
                {
                    GameObject go = JOPoolMgr.Ins.GetGameObject(m_subScrollPrefabName);
                    if (go != null)
                    {
                        RectTransform rTrans = transform.GetComponent<RectTransform>();
                        m_subScrollRect = go.GetComponent<LoopScrollRect>();
                        RectTransform subRTrans = m_subScrollRect.rectTransform();
                        subRTrans.sizeDelta = new Vector2(rTrans.sizeDelta.x, m_openSize);
                        subRTrans.anchorMax = new Vector2(0.5f, 0);
                        subRTrans.anchorMin = new Vector2(0.5f, 0);
                        subRTrans.pivot = new Vector2(0.5f, 1);
                        subRTrans.localPosition = new Vector3(0, -5, 0);
                    }
                }
                SetPreferredHeightOffset(m_openSize);
            }
            else
            {
                SetPreferredHeightOffset(-m_openSize);
                if (m_subScrollRect)
                {
                    JOPoolMgr.Ins.RecoverGameObject(m_subScrollRect.gameObject, m_subScrollPrefabName);
                    m_subScrollRect = null;
                }
            }
        }


    }

}

