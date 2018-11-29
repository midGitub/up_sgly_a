using UnityEngine;
using System.Collections;
using JOSophia;
using AF;

namespace UnityEngine.UI
{
    [System.Serializable]
    public class LoopScrollPrefabSource 
    {
        //要传全路径
        public string prefabName;
        private LoopVerticalScrollRect VerticalScroll;
        private ScrollIndexCallback4 BtnCallback;
        public virtual GameObject GetObject()
        {
            return JOPoolMgr.Ins.GetGameObject("Prefabs/UI/Widget/SecMenuUI/" + prefabName);
        }

        public virtual void ReturnObject(Transform go)
        {
            BtnCallback = go.transform.GetComponent<ScrollIndexCallback4>();
            if (BtnCallback)
            {
                if (BtnCallback.isOpening)
                {
                    BtnCallback.OnSupMenuBtnClick();
                }
            }
            go.transform.GetComponent<Button>().onClick.RemoveAllListeners();
            JOPoolMgr.Ins.RecoverGameObject(go.gameObject, "Prefabs/UI/Widget/SecMenuUI/" + prefabName);
        }

    }
}
