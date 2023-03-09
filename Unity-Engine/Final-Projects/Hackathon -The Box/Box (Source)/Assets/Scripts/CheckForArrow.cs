using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class CheckForArrow : MonoBehaviour
{
    int score = 0;
    [SerializeField] TextMeshProUGUI text;
    int streak = 0; 
    Arrow arrow;
    const int KEY_RIGHT = 90;
    const int KEY_DOWN = 180;
    const int KEY_UP = 0;
    int rotation = 0;
    public static CheckForArrow instance;

    private void Awake()
    {
        instance = this;
        text.text = "Score: " + score.ToString();
    }

    public void OnTriggerStay2D(Collider2D collision)
    {
        if (Input.anyKeyDown)
        {
            CheckIfArrowCorrect();
        }
    }

    public void OnTriggerEnter2D(Collider2D collision)
    {
        arrow = collision.gameObject.GetComponent<Arrow>();
        rotation = arrow.GetRotation();
    }

    //private void OnCollisionEnter2D(Collision2D collision)
    //{
    //    arrow = collision.gameObject.GetComponent<Arrow>();
    //    int rotation = arrow.GetRotation();
    //    CheckIfArrowCorrect(rotation);
    //}

    private void CheckIfArrowCorrect()
    {
        if (Input.GetKeyDown(KeyCode.LeftArrow) && rotation == KEY_RIGHT)
        {
            Debug.Log("Right Key Detected");
            streak++;
            if (streak >= 3)
            {
                CatBehavior.instance.SetCatLives(-1);
                score *= 2;
                streak = 0;
            }
            arrow.GetComponent<SpriteRenderer>().color = Color.white;
            score++;
            text.text = "Score: "+score.ToString();
        }
        else if (Input.GetKeyDown(KeyCode.DownArrow) && rotation == KEY_DOWN)
        {
            Debug.Log("Down Key Detected");
            if (streak >= 3)
            {
                CatBehavior.instance.SetCatLives(-1);
                score *= 2;
                streak = 0;
            }
            arrow.GetComponent<SpriteRenderer>().color = Color.white;
            score++;
            text.text = "Score: " + score.ToString();
            streak++;
        }

        else if (Input.GetKeyDown(KeyCode.UpArrow) && rotation == KEY_UP)
        {
            Debug.Log("Up Key Detected");
            if (streak >= 3)
            {
                CatBehavior.instance.SetCatLives(-1);
                score *= 2;
                streak = 0;
            }
            arrow.GetComponent<SpriteRenderer>().color = Color.white;
            score++;
            text.text = "Score: " + score.ToString();
        }
        else
        {
            PlayerHealth.instance.SetHealth(-1);
            streak = 0;
        }
    }
}
