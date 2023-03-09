using UnityEngine;

public class Player : Entity
{
    [SerializeField] private string[] inventory;
    [SerializeField] private string[] skills;
    [SerializeField] private int money;
    private Rigidbody2D _rigidBody2D;

}
