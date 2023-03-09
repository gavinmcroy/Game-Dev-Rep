using System;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine;
using Random = UnityEngine.Random;

public class RandomBattle : MonoBehaviour
{
    [SerializeField] private int battleProbability;
    [SerializeField] private int secondBetweenBattles;
    [SerializeField] private string battleSceneName;
    
    private int _encounterChance = 100;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!GameState.JustExitedBattle)
        {
            _encounterChance = Random.Range(1, 100);
            if (_encounterChance > battleProbability)
            {
                StartCoroutine(RecalculateChance());
            }
        }
        else
        {
            StartCoroutine(RecalculateChance());
            GameState.JustExitedBattle = false;
        }
    }

    IEnumerator RecalculateChance()
    {
        while (_encounterChance > battleProbability)
        {
            yield return new WaitForSeconds(secondBetweenBattles);
            _encounterChance = Random.Range(1, 100);
        }
    }

    private void OnTriggerStay2D(Collider2D other)
    {
        if (_encounterChance <= battleProbability)
        {
            Debug.Log("Battle");
            SceneManager.LoadScene(battleSceneName);
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        _encounterChance = 100;
        StopCoroutine(RecalculateChance());
    }
}
