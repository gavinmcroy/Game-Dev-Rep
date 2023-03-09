using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//---Attached to Ruby
public class RubyController : MonoBehaviour
{
    public int GetMaxHealth { get; } = 5;
    public int GetCurrentHealth { get; private set; }
    private readonly float speed = 8.0f;
    private readonly float timeInvicible = 2.0f;
    private float invicibleTimer;
    private bool isInvicible;

    [SerializeField] GameObject projectilePrefab;
    [SerializeField] AudioClip projectileLaunch;
    [SerializeField] AudioClip damageTaken;
    AudioSource audioSource;
    Vector2 lookDirection = new Vector2(1, 0);
    Animator animator;
    Rigidbody2D rigidBody2D;

    void Start()
    {
        InitializeParameters();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.C))
        {
            LaunchProjectile();
        }
        RayCastTest();
    }

    void FixedUpdate()
    {
        MovementController();
        UpdateHealthBar();
        InvicibilityController();
    }
    //---Damage taken is in negative (-1)
    public void ChangeHealth(int amount)
    {
        if (amount < 0)
        {
            if (isInvicible)
                return;
            isInvicible = true;
            invicibleTimer = timeInvicible;
            PlaySound(damageTaken);
        }
        GetCurrentHealth = Mathf.Clamp(GetCurrentHealth + amount, 0, GetMaxHealth);
    }

    public void PlaySound(AudioClip audioClip)
    {
        audioSource.PlayOneShot(audioClip);
    }

    private void RayCastTest()
    {
        if (Input.GetKeyDown(KeyCode.X))
        {
            RaycastHit2D rayCast = Physics2D.Raycast(rigidBody2D.position + Vector2.up * .2f, lookDirection, 1.5f, LayerMask.GetMask("NPC"));
            if (rayCast.collider != null)
            {
                NonPlayerCharacter NPC = rayCast.collider.GetComponent<NonPlayerCharacter>();
                if (NPC != null)
                {
                    NPC.DisplayBox();
                }
            }
        }
    }

    private void UpdateHealthBar()
    {
        UIHealthBar.instance.SetValue(GetCurrentHealth / (float)GetMaxHealth);
    }

    private void InitializeParameters()
    {
        animator = GetComponent<Animator>();
        rigidBody2D = GetComponent<Rigidbody2D>();
        audioSource = GetComponent<AudioSource>();

        GetCurrentHealth = GetMaxHealth;

        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = 144;
    }

    private void MovementController()
    {
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");

        Vector2 move = new Vector2(horizontal, vertical);

        if(Mathf.Pow(horizontal,2) + Mathf.Pow(vertical, 2) > 1)
        {
            move.Normalize();
        }

        //---Checks if not Idle
        if (!Mathf.Approximately(move.x, 0.0f) || !Mathf.Approximately(move.y, 0.0f))
        {
            lookDirection.Set(move.x, move.y);
            lookDirection.Normalize();
            audioSource.UnPause();
        }
        else
        {
            audioSource.Pause();
        }

        animator.SetFloat("Look Y", lookDirection.y);
        animator.SetFloat("Look X", lookDirection.x);
        
        animator.SetFloat("Speed", move.magnitude);

        Vector2 position = rigidBody2D.position;

        position += move * (speed * Time.deltaTime);

        rigidBody2D.MovePosition(position);
    }

    private void InvicibilityController()
    {
        if (isInvicible)
        {
            invicibleTimer -= Time.deltaTime;
            if (invicibleTimer < 0)
            {
                isInvicible = false;
            }
        }
    }

    private void LaunchProjectile()
    {
        GameObject projectileObject = Instantiate(projectilePrefab, rigidBody2D.position + Vector2.up * .5f, Quaternion.identity);
        Projectile projectile = projectileObject.GetComponent<Projectile>();
        projectile.Launch(lookDirection, 300);
        animator.SetTrigger("Launch");
        PlaySound(projectileLaunch);
    }



}
