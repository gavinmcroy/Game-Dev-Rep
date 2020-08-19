using UnityEngine;

public class Move : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 3;
    private float _xMove;
    private float _yMove;
    private Rigidbody2D _rigidBody2D;

    void Awake()
    {
        _rigidBody2D = GetComponent<Rigidbody2D>();
    }

    void FixedUpdate()
    {
        Movement();
    }

    private void Movement()
    {
        _xMove = Input.GetAxisRaw("Horizontal");
        _yMove = Input.GetAxisRaw("Vertical");
        var move = new Vector2(_xMove, _yMove);

        if (move.magnitude * moveSpeed > moveSpeed)
        {
            _rigidBody2D.velocity = move.normalized * moveSpeed;
        }
        else
        {
            _rigidBody2D.velocity = moveSpeed * move;
        }
    }
}