using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TapTutorial : MonoBehaviour
{
    public PointCloudRegognizer pcr;
    public DragRecognizer drag;
    public LongPressRecognizer lp;
    public PinchRecognizer pr;
    public SwipeRecognizer sr;
    public TapRecognizer tr;
    public TwistRecognizer tw;

    public Text loges;
    public Button pcrBtn;
    public Button dragBtn;
    public Button lpBtn;
    public Button prBtn;
    public Button srBtn;
    public Button trBtn;
    public Button twBtn;

    private void Awake()
    {
        pcr.m_gestureEvent = OnCustomGesture;
        drag.m_gestureEvent = OnDrag;
        lp.m_gestureEvent = OnLongPress;
        pr.m_gestureEvent = OnPinch;
        sr.m_gestureEvent = OnSwipe;
        tr.m_gestureEvent = OnTap;
        tw.m_gestureEvent = OnTwist;

        pcrBtn.onClick.AddListener(() => { Init(); pcr.enabled = true; });
        dragBtn.onClick.AddListener(() => { Init(); drag.enabled = true; });
        lpBtn.onClick.AddListener(() => { Init(); lp.enabled = true; });
        prBtn.onClick.AddListener(() => { Init(); pr.enabled = true; });
        srBtn.onClick.AddListener(() => { Init(); sr.enabled = true; });
        trBtn.onClick.AddListener(() => { Init(); tr.enabled = true; });
        twBtn.onClick.AddListener(() => { Init(); tw.enabled = true; });
        Init();
    }

    private void Init()
    {
        pcr.enabled = false;
        drag.enabled = false;
        lp.enabled = false;
        pr.enabled = false;
        sr.enabled = false;
        tr.enabled = false;
        tw.enabled = false;   
    }

    private void SetText(string str)
    {
        loges.text = str;
    }

    void OnTwist(TwistGesture gesture) {
        SetText("OnTwist");
    }

    void OnSwipe(SwipeGesture gesture) {
        SetText("OnSwipe");
    }

    void OnPinch(PinchGesture gesture) {
        SetText("OnPinch");
    }

    void OnLongPress(LongPressGesture gesture) {
        SetText("LongP");
    }

    public void OnCustomGesture(PointCloudGesture gesture)
    {
        SetText(gesture.RecognizedTemplate.name + "  ____score : " + gesture.MatchScore);
    }

    void OnDrag(DragGesture gesture)
    {
        SetText("Drag");
    }

    public void OnTap(TapGesture gesture)
    {
       SetText("Tap pos : " + gesture.Position + "sentor : " + gesture.Recognizer.name);
    }
}