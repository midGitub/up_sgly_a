using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScrollIndexCallback1 : MonoBehaviour
{
    public Image image;
    public Text text;
    private Button ClickChildBtn;
    private int Curindex;

    void ScrollCellIndex(int idx)
    {
        Curindex = idx;
        string name = "Cell " + idx.ToString();
        if (text != null)
        {
            text.text = name;
        }
        if (image != null)
        {
            image.color = Rainbow(idx / 50.0f);
        }
        gameObject.name = name;
        ClickChildBtn = gameObject.transform.GetComponent<Button>();
        ClickChildBtn.onClick.AddListener(() => { BtnClickEvent(); });
    }

    void BtnClickEvent()
    {
        print(Curindex);
    }

    public static Color Rainbow(float progress)
    {
        progress = Mathf.Clamp01(progress);
        float r = 0.0f;
        float g = 0.0f;
        float b = 0.0f;
        int i = (int)(progress * 6);
        float f = progress * 6.0f - i;
        float q = 1 - f;

        switch (i % 6)
        {
            case 0:
                r = 1;
                g = f;
                b = 0;
                break;
            case 1:
                r = q;
                g = 1;
                b = 0;
                break;
            case 2:
                r = 0;
                g = 1;
                b = f;
                break;
            case 3:
                r = 0;
                g = q;
                b = 1;
                break;
            case 4:
                r = f;
                g = 0;
                b = 1;
                break;
            case 5:
                r = 1;
                g = 0;
                b = q;
                break;
        }
        return new Color(r, g, b);
    }

}
