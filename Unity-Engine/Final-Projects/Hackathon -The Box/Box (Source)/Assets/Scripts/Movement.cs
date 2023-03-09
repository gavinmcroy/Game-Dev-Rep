using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Movement : MonoBehaviour
{
    public Animator animator;
    public float speed;
    private Rigidbody2D rigidBody2D;

    void Start()
    {
        rigidBody2D = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");
        animator.SetFloat("Horizontal", horizontal);
        animator.SetFloat("Vertical", vertical);

        if (Mathf.Approximately(horizontal,0) && Mathf.Approximately(vertical, 0))
        {
            animator.SetFloat("Speed", 0);
        }
        else
        {
            animator.SetFloat("Speed", 1);
        }

        Vector3 tempVect = new Vector3(horizontal, vertical, 0);
        tempVect = tempVect.normalized * speed * Time.deltaTime;
        rigidBody2D.MovePosition(rigidBody2D.transform.position + tempVect);
        if (Input.GetKeyDown(KeyCode.Space))
            SceneManager.LoadScene("Combat");
    }

    private void OnCollisionEnter(Collision collision)
    {
        print("hit");
        if (collision.gameObject.tag == "Boss")
        {
            print("Hit");
            SceneManager.LoadScene("Combat");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        print("hit");
    }

    private void OnMouseEnter()
    {
        print("hit2");

    }

}
