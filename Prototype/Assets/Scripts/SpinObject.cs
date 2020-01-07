using System.Collections;
using UnityEngine;

public class SpinObject : MonoBehaviour
{
    IEnumerator Spin ()
    {
        while (true)
        {
            gameObject.transform.Rotate(0,0,10*Time.deltaTime);
            yield return null;
        }
    }

    private void Awake()
    {
        StartCoroutine(Spin());
    }
}
