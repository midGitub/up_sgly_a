using UnityEngine;
using System.Collections;

public class TreeEffect : MonoBehaviour {

    private MeshRenderer mRender;
    public bool isHited = false;

	// Use this for initialization
	void Start () {
        mRender = this.GetComponent<MeshRenderer>();
        mRender.enabled = true;
	}
	
	// Update is called once per frame
    //void Update () {
    //    if(isHited == false)
    //    {
    //        mRender.material.SetFloat("_ThrothCutoff", 1);
    //        return;
    //    }
    //    else
    //    {
    //        mRender.material.SetFloat("_ThrothCutoff", 0.5f);
    //    }
    //}

    void OnTriggerEnter(Collider other)
    {
        mRender.enabled = false;
    }


    void OnTriggerExit(Collider other)
    {
        mRender.enabled = true;
    }
}
