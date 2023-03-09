using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerHealth : MonoBehaviour
{
	[SerializeField] int playerHealth = 3;
	[SerializeField] Sprite[] healthSprites;
	SpriteRenderer spriteRenderer;
    public static PlayerHealth instance;

	void Awake()
	{
        instance = this;
		spriteRenderer = GetComponent<SpriteRenderer>();
	}

	// Update is called once per frame
	void Update()
        
	{
        if (playerHealth <=0 )
        {
            SceneManager.LoadScene(0);
        }
		spriteRenderer.sprite = healthSprites[playerHealth];
	}

    public void SetHealth(int health)
    {
        playerHealth += health; 
    }
}
