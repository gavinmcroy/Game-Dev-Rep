using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEngine.UI;

public class SwitchScene : MonoBehaviour
{
    public TextMesh text;

    private void OnMouseOver()
    {
        text.color = Color.white;
    }

    private void OnMouseExit()
    {
        text.color = Color.black;
    }

    private void OnMouseDown()
    {
        SceneManager.LoadScene("PostOffice");
    }

    
}
