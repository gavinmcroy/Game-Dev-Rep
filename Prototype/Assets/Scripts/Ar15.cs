using System;
using UnityEditor.UIElements;
using UnityEngine;

public class Ar15 : MonoBehaviour
{
    [SerializeField] private Transform playerPosition;


    private void FixedUpdate()
    {
        var transform1 = this.transform;
        var position = playerPosition.transform.position;
        transform1.position = new Vector3(position.x, position.y, 0);
    }
}