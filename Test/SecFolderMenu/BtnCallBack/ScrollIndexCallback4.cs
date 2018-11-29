using UnityEngine;
using UnityEngine.UI;
using System.Collections;

namespace AF
{
    public delegate void OnListenEvent(int index);
    public delegate float GetCellContentHight(int index);
    public class ScrollIndexCallback4 : MonoBehaviour
    {
        private float InitSizePrefabHight;
        public RectTransform ChildMenu;
        public Text text;
        public LayoutElement element;
        public Transform ScrollContent;
        private Button BtnClick;
        private int index;
        public bool isOpening { get; set; }
        public OnListenEvent onListenInit;
        public OnListenEvent onListEnd;
        public GetCellContentHight onGetConCellH;


        void ScrollCellIndex(int idx)
        {
            index = idx;
            string name = "Cell " + idx.ToString();
            gameObject.name = name;
            if (text != null)
            {
                text.text = name;
            }
            BtnClick = gameObject.transform.GetComponent<Button>();
            BtnClick.onClick.AddListener(OnSupMenuBtnClick);
            ChildMenu.GetComponent<InitChildMenu>().SetSupMenuMap(idx);
        }
         public void OnSupMenuBtnClick()
        {
            if (isOpening)
            {
                SetDownMenu(index);
            }
            else
            {
                SetUpMenu(index);
            }
        }

        void SetUpMenu(int index)
        {
            //会向当前的上层发消息 :1滚动到当前button的位置  2上层会发消息给下层所有button 关闭其他（打开的button）   
            SendMessageUpwards("RecSubCellMessage", index); 
            SetOpenIndexBtn(index);
        }

        //接受上层返回来的消息调用  不同的button都会接收到这个消息  如果是打开 且与当前的序号不同 就关闭
        void RecChangeBtnState(int idx)
        {
            if (isOpening && idx != index)
            {
                ChildMenu.sizeDelta = new Vector2(ChildMenu.sizeDelta.x, ChildMenu.sizeDelta.y - onGetConCellH(index));
                element.preferredHeight -= onGetConCellH(index);
                isOpening = false;
                if (onListEnd != null)
                {
                    onListEnd(index);
                }
            }
        }

        void SetDownMenu(int index)
        {
            ChildMenu.sizeDelta = new Vector2(ChildMenu.sizeDelta.x, ChildMenu.sizeDelta.y - onGetConCellH(index));
            element.preferredHeight -= onGetConCellH(index);
            isOpening = false;
            if (onListEnd != null)
            {
                onListEnd(index);
            }
        }
        void SetOpenIndexBtn(int index)
        {
            element.preferredHeight += onGetConCellH(index);
            ChildMenu.sizeDelta = new Vector2(ChildMenu.sizeDelta.x, ChildMenu.sizeDelta.y + onGetConCellH(index));
            isOpening = true;
            if (onListenInit != null)
            {
                onListenInit(index);
            }
        }

    }

}

