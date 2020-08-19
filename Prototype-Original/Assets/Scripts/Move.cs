using UnityEngine;

public class Move : MonoBehaviour
{
    [Header("Move")] [SerializeField] private int moveSpeed;

    private float _xMove;
    private float _yMove;
    private Rigidbody2D _rigidBody2D;

    private void Awake()
    {
        _rigidBody2D = GetComponent<Rigidbody2D>();
    }

    private void Update()
    {
        _xMove = Input.GetAxisRaw("Horizontal");
        _yMove = Input.GetAxisRaw("Vertical");
    }

    void FixedUpdate()
    {
        var movement = new Vector2(_xMove, _yMove);
        _rigidBody2D.velocity = movement * moveSpeed;

        if (movement.magnitude * moveSpeed > moveSpeed)
        {
            _rigidBody2D.velocity = movement.normalized * moveSpeed;
        }
        else
        {
            _rigidBody2D.velocity = moveSpeed * movement;
        }
    }
}