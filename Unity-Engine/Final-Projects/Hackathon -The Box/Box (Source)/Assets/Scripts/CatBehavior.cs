using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CatBehavior : MonoBehaviour
{
    int catLives = 9;
    SpriteRenderer spriteRenderer;
    [SerializeField] Sprite[] catSprites;
    public static CatBehavior instance;

    private void Awake()
    {
        instance = this;
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    void Update()
    {
        
    }

    IEnumerator Start()
    {
        while (true)
        {
            int random = Random.Range(0, 2);
            Debug.Log(random);
            yield return new WaitForSeconds(5);
            spriteRenderer.sprite = catSprites[random];
        }

    }

    public int GetCatLives()
    {
        return catLives;
    }

    public void SetCatLives(int damage)
    {
        catLives += damage;
    }
}
