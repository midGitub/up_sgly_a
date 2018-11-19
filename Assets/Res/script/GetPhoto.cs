using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetPhoto : MonoBehaviour {

    public string fileName="FileName";
    private int findex;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.P))
        {
            findex++;
            ScreenCapture.CaptureScreenshot(fileName + "" + findex + ".jpg");
        }
	}
}
