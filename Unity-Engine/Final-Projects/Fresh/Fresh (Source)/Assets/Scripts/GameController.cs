using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class GameController : MonoBehaviour
{
    private static int cash;
    private static int score;
    private static int highScore;
    [SerializeField] TextMeshProUGUI cashText;
    [SerializeField] TextMeshProUGUI scoreText;
    public static GameController instance;

    private void Awake()
    {
        cash = 0;
        score = 0;
        if (instance == null)
        {
            instance = this;
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Application.Quit();
        }
    }

    void Start()
    {
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = 144;
        cashText.text = "Cash:$"+cash.ToString();
        scoreText.text = "Score:" + score.ToString();
    }

    public void AddScore(int scoreAmount)
    {
        cash += scoreAmount;
        score += scoreAmount * 2;
        cashText.text = "Cash:$"+cash.ToString();
        scoreText.text = "Score:"+score.ToString();
        if (score > highScore)
        {
            highScore = score;
            PlayerPrefs.SetInt("Highscore", highScore);
        }
    }

    public void RemoveScore(int removeAmount)
    {
        cash -= removeAmount;
        cashText.text = "Cash:$"+cash.ToString();
    }

    public int GetScore()
    {
        return cash;
    }
}
