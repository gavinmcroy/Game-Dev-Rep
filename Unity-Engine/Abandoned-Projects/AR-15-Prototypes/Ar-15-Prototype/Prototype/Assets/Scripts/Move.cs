using System;
using UnityEngine;

/*!
    Controls movement of player through keyboard presses
    
     TODO: take input.GetAxisRaw and place inside update
     add physics based movement in fixedUpdate
     Goal is to prevent miss calls to input due to fixed update
 */
public class Move : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 5;
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

    private void Update()
    {
        _xMove = Input.GetAxisRaw("Horizontal");
        _yMove = Input.GetAxisRaw("Vertical");
    }

    /*!
    *  Moves player based on rigidBody2d.velocity, also calculates magnitude
    *  of move vector to make sure player remains at one speed
    */
    private void Movement()
    {
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