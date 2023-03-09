using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class textUpdate : MonoBehaviour {
    [SerializeField] TextMeshProUGUI Gtext;
    [SerializeField] int x; 
    void Start()
    {
        Gtext.text = x.ToString();
        Debug.Log(SceneManager.GetActiveScene().name);
        
    }
    public void buttonPress()
    {
        string hi = "Hello world! ";
        Gtext.text = hi; 
    }
    public void endGame()
    {
        Application.Quit(); 
    }
    public void loadNextScene()
    {
        int currentSceneIndex = SceneManager.GetActiveScene().buildIndex;
        SceneManager.LoadScene(currentSceneIndex + 1); 
    }
    public void restartScene()
    {
        SceneManager.LoadScene(0);
    }
}
