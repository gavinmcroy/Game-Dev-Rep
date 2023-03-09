using System.Collections;
using UnityEngine;
using Vector2 = UnityEngine.Vector2;
using Vector3 = UnityEngine.Vector3;

/*!
 * AR 15 CLASS Handles Movement and Behavior of AR15
 * Weapon. Includes Different Variables and stuff
 * TODO -Left off on implementation of hit scan features
 * TODO  and other minor template methods. Also figuring
 * TODO  out class organization and communication between
 * TODO  Ar15 and other world objects
 * TODO playSound
 * TODO Screen shake
 * TODO drawTracer
 * TODO Deduct Total Bullets
 * TODO Get ray to draw where mouse is pointing 
 */


public class Ar15 : MonoBehaviour
{
    [SerializeField] private Transform playerPosition;

    /*!
        Unity Units is the size of the camera * 2
     */
    [SerializeField] private int unityUnits;

    /*!
     * Ratio of a 16:9 Screen
     */
    private const float ScreenRatio = 1.777f;

    private Coroutine _firingCoroutine;

    /*!
     * Stores rotation of the attached object
     */
    private float _rotation;

    private void Update()
    {
        MoveWithPlayer();
        PointToMouseLocation();
        FireWeapon();
    }

    /*!
     * Takes the transform position of an object and sets it to the position of the player
     */
    private void MoveWithPlayer()
    {
        var transform1 = transform;
        var position = playerPosition.transform.position;
        transform1.position = new Vector3(position.x, position.y, 0);
    }

    /*!
     * TODO ---Finish implementation of projectile
     * Shoots a raycast corresponding towards mouse position, if collision is detected logs a successful hit
     * if rotation is less than 0 than raycast draws backwards, making transform.forward negative flips it
     * to the appropriate direction
     */
    IEnumerator FireContinuously()
    {
        while (true)
        {
            Transform transform1;
            RaycastHit2D rayCastHit2D;
            if (_rotation < 0)
            {
                var direction = Quaternion.AngleAxis(_rotation, transform.up) * -(transform1 = transform).forward;
                rayCastHit2D = Physics2D.Raycast(transform1.position, direction, 100f,
                    LayerMask.GetMask("Hostile"));
            }
            else
            {
                //Transform transform1;
                var direction = Quaternion.AngleAxis(_rotation, transform.up) * (transform1 = transform).forward;
                rayCastHit2D = Physics2D.Raycast(transform1.position, direction, 100f,
                    LayerMask.GetMask("Hostile"));
            }

            if (!ReferenceEquals(rayCastHit2D.collider, null))
            {
                Debug.Log("Successful Hit");
                Target target = rayCastHit2D.collider.gameObject.GetComponent<Target>();
                target.TakeDamage(3);
            }

            Debug.Log("Shooting");
            yield return new WaitForSeconds(.1f);
        }
    }

    private void DealDamage()
    {
        
    }
    
    /*!
     * TODO---Finish implementation of reload
     *
     *
     * 
     */
    private void Reload()
    {
    }

    /*!
     * Starts firing coroutine when user presses "Fire1" and stops when key is lifted 
     */
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

    /*!
     * Calculates the angle of the mouse and tilts attached sprite appropriately to match
     * Uses Mathf.Clamp to avoid a NaN scenario and to keep exceptions from occuring
     * Mathf.Rad2Deg converts radiants into degrees and multiplies it by -1 as without doing so
     * the rotation is inversed
     */
    private void PointToMouseLocation()
    {
        Vector2 tmp = new Vector2(Input.mousePosition.x / Screen.height * unityUnits,
            Input.mousePosition.y / Screen.width * (unityUnits * ScreenRatio));
        var position = transform.position;
        float vectorHypotenuse = Vector2.Distance(position, tmp);
        float height = position.y - Input.mousePosition.y / Screen.height * unityUnits;
        _rotation = Mathf.Clamp((Mathf.Asin(height / vectorHypotenuse) * Mathf.Rad2Deg * -1), -89.9f, 89.9f);

        if (float.IsNaN(_rotation))
        {
            return;
        }

        transform.eulerAngles = new Vector3(0, 0, _rotation);
    }
}