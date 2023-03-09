using System;
using UnityEngine;

public class Laser : MonoBehaviour
{
    [Header("Laser")] [SerializeField] private int bulletVelocity;
    [SerializeField] private int damage;

    private Rigidbody2D _rigidbody2D;

    private void Awake()
    {
        _rigidbody2D = GetComponent<Rigidbody2D>();
        _rigidbody2D.AddForce(new Vector2(0, bulletVelocity));
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        Debug.Log("Laser Destroyed");
        Destroy(gameObject);
    }

    private void OnCollisionEnter2D(Collision2D other)
    {
        var enemy = other.gameObject.GetComponent<Enemy>();
        if (enemy != null)
        {
            enemy.DealDamage(damage);
            Destroy(gameObject);
        }
        else
        {
            Debug.Log("Miss");
        }
    }
}