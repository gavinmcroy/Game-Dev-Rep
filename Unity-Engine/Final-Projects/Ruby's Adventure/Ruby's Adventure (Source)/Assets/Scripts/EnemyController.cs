using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyController : MonoBehaviour
{
    private readonly float speed = 1.5f;
    private readonly float timeToSwitch = 3.0f;
    private readonly bool vertical = true;
    private bool isBroken = true;
    private int direction = 1;
    private float timer;    

    [SerializeField] private ParticleSystem smokeParticles;
    [SerializeField] AudioClip fixedSound;
    AudioSource audioSource;
    Animator animator;
    Rigidbody2D rigidBody2D;

    void Start()
    {
        rigidBody2D = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        audioSource = GetComponent<AudioSource>();
        timer = timeToSwitch;
    }

    
    void FixedUpdate()
    {
        if (!isBroken)
        {
            return;
        }
        DirectionTimer();
        MovementController();
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        RubyController rubyController = collision.gameObject.GetComponent<RubyController>();
        if (rubyController != null)
        {
            rubyController.ChangeHealth(-1);
        }
    }

    public void Fix()
    {
        isBroken = false;
        rigidBody2D.simulated = false;
        animator.SetTrigger("Fixed");
        smokeParticles.Stop();
        audioSource.Stop();
        audioSource.PlayOneShot(fixedSound);
    }

    private void MovementController()
    {
        Vector2 position = rigidBody2D.position;

        if (vertical)
        {
            animator.SetFloat("MoveX", 0);
            animator.SetFloat("MoveY", direction);
            position.y += speed * Time.deltaTime * direction;
        }
        else
        {
            animator.SetFloat("MoveX", direction);
            animator.SetFloat("MoveY", 0);
            position.x += speed * Time.deltaTime * direction;
        }
        rigidBody2D.MovePosition(position);
    }

    private void DirectionTimer()
    {
        timer -= Time.deltaTime;

        if (timer < 0)
        {
            direction = -direction;
            timer = timeToSwitch;
        }
    }
}
