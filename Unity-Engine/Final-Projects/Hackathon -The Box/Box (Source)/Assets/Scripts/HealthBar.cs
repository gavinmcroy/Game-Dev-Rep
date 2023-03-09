using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class HealthBar : MonoBehaviour
{
    [SerializeField] Sprite[] health;
    SpriteRenderer spriteRenderer;
    

    void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        if (CatBehavior.instance.GetCatLives() <= 1)
        {
            SceneManager.LoadScene(0);
        }
        spriteRenderer.sprite = health[CatBehavior.instance.GetCatLives()-1];
    }


}
