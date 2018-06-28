using Assets.Scripts.TableView;
using UnityEngine;
using UnityEngine.UI;


namespace Assets.Scripts.Example
{
    public class ExampleTableViewCell : TableViewCell
    {
        public Text m_text;
        
        public override string ReuseIdentifier
        {
            get { return "ExampleTableViewCell"; }
        }

        public override void SetHighlighted()
        {
            
        }

        public override void SetSelected()
        {

        }

        public override void Display()
        {
            
        }
        public float SetTxt(string txt)
        {
            m_text.text = txt;
            return m_text.preferredHeight;
        }

    }
}