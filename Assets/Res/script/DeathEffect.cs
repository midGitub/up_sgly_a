using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class DeathEffect : MonoBehaviour
{
    //public float deathTime = 5;
    private float deadTime;

    public float delayTime1 = 1.0f;
    public GameObject delayObject1;

    public float delayTime2 = 1.0f;
    public GameObject delayObject2;

    public float delayTime3 = 1.0f;
    public GameObject delayObject3;
    void OnEnable()
    {
        //deadTime = Time.time + deathTime;
        if (delayObject1 != null)
        {
            delayObject1.gameObject.SetActive(false);
        }
        if (delayObject2 != null)
        {
            delayObject2.gameObject.SetActive(false);
        }
        if (delayObject3 != null)
        {
            delayObject3.gameObject.SetActive(false);
        }
        Invoke("DelayFunc1", delayTime1);
        Invoke("DelayFunc2", delayTime2);
        Invoke("DelayFunc3", delayTime3);
    }
    void DelayFunc1()
    {
        if (delayObject1!=null)
        {
            delayObject1.gameObject.SetActive(true);
        }
       
    }

    void DelayFunc2()
    {
        if (delayObject2 != null)
        {
            delayObject2.gameObject.SetActive(true);
        }

    }
    void DelayFunc3()
    {
        if (delayObject3 != null)
        {
            delayObject3.gameObject.SetActive(true);
        }

    }

    //void Update()
    //{
    //    if (Time.time >= deadTime)
    //    {
    //        Destroy(gameObject);
    //    }
    //}
}

