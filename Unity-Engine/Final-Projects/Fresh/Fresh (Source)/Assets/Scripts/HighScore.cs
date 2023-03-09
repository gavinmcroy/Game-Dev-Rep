using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class HighScore : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI score;

    void Start()
    {
        int highScore = PlayerPrefs.GetInt("Highscore");
        score.text = "High Score: "+highScore.ToString();
    }
}
