using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class HitBoss : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
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

    private void OnTriggerEnter(Collider collision)
    {
        print("hit");
    }

    private void OnMouseEnter()
    {
        print("hit");

    }
}
