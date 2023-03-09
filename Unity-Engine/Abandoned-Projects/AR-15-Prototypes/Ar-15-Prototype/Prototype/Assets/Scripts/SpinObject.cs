using System.Collections;
using UnityEngine;

/*!
 *  Temporary Class that contains allows for an attached object to spin
 */
public class SpinObject : MonoBehaviour
{
    IEnumerator Spin()
    {
        while (true)
        {
            gameObject.transform.Rotate(0, 0, 10 * Time.deltaTime);
            yield return null;
        }
    }

    private void Awake()
    {
        StartCoroutine(Spin());
    }
}