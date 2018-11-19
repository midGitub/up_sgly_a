using UnityEngine;

public class Delay : MonoBehaviour
{
	public float delayTime = 1.0f;
    private bool hasPlayed = false;

	void OnEnable ()
    {
        if (!hasPlayed)
        {
            gameObject.SetActive(false);
            Invoke("DelayFunc", delayTime);
        }
	}

    void OnDisable()
    {
        hasPlayed = false;
    }

    void DelayFunc()
	{
        hasPlayed = true;
        gameObject.SetActive(true);
    }
}
