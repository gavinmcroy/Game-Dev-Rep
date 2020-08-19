using System;
using UnityEngine;
using EZCameraShake;

public class Shoot : MonoBehaviour
{
    [Header("Projectile")]
    [SerializeField] private Laser projectile;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.K))
        {
            var position1 = transform.position;
            //var position = new Vector2(position1.x,position1.y);
            Instantiate(projectile, position1+new Vector3(0,.35f,0),Quaternion.identity);
            CameraShaker.Instance.ShakeOnce(4f, 4f, .5f, 1);
        }
    }
}
