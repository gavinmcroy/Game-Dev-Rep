using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NonPlayerCharacter : MonoBehaviour
{
    public float displayTime = 4.0f;
    public GameObject dialogueBox;
    float timerDisplay;

    void Start()
    {
        dialogueBox.SetActive(false);
        timerDisplay = -1.0f;
    }

    
    void Update()
    {
        CheckTime();
    }

    public void DisplayBox()
    {
        timerDisplay = displayTime;
        dialogueBox.SetActive(true);
    }

    private void CheckTime()
    {
        if (timerDisplay >= 0)
        {
            timerDisplay -= Time.deltaTime;
            if (timerDisplay < 0)
            {
                dialogueBox.SetActive(false);
            }
        }
    }
}
