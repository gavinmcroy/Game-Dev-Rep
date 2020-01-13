using System.Collections;
using UnityEngine;
using Vector2 = UnityEngine.Vector2;
using Vector3 = UnityEngine.Vector3;

public class Ar15 : MonoBehaviour
{
    /* TODO
     * TODO -Left off on implementation of hit scan features
     * TODO  and other minor template methods. Also figuring
     * TODO  out class organization and communication between
     * TODO  Ar15 and other world objects
     */
    
    [SerializeField] private Transform playerPosition;
    [SerializeField] private int unityUnits;
    [SerializeField] private int bulletInMag;

    //---Width to height ratio (16:9)
    private const float ScreenRatio = 1.777f;

    private Coroutine _firingCoroutine;

    private void FixedUpdate()
    {
        FireWeapon();
        MoveWithPlayer();
        PointToMouseLocation();
    }

    private void MoveWithPlayer()
    {
        var transform1 = transform;
        var position = playerPosition.transform.position;
        transform1.position = new Vector3(position.x, position.y, 0);
    }

    IEnumerator FireContinuously()
    {
        /* TODO ---Finish implementation of projectile
         *
         * 
         *
         */
        while (true)
        {
            //---TODO playSound
            //---TODO Screen shake
            //---TODO drawTracer
            //---TODO Deduct Total Bullets
            yield return new WaitForSeconds(.1f);
        }
    }

    private void Reload()
    {
        /* TODO---Finish implementation of reload
         *
         *
         * 
         */
    }

    private void FireWeapon()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            _firingCoroutine = StartCoroutine(FireContinuously());
        }

        if (Input.GetButtonUp("Fire1"))
        {
            StopCoroutine(_firingCoroutine);
        }
    }

    private void PointToMouseLocation()
    {
        Vector2 tmp = new Vector2(Input.mousePosition.x / Screen.height * unityUnits,
            Input.mousePosition.y / Screen.width * (unityUnits * ScreenRatio));
        var position = transform.position;
        float vectorHypotenuse = Vector2.Distance(position, tmp);
        float height = position.y - Input.mousePosition.y / Screen.height * unityUnits;
        float rotation = Mathf.Clamp((Mathf.Asin(height / vectorHypotenuse) * Mathf.Rad2Deg * -1), -89.9f, 89.9f);

        if (float.IsNaN(rotation))
        {
            return;
        }

        transform.eulerAngles = new Vector3(0, 0, rotation);
    }
}