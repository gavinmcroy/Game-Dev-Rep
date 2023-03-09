using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class TextUpdater : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI textComponent;

    /* TEMP */
    private int random = 0;
    private string storage = "";
    /* TEMP */

    void Start()
    {
     
    }

    void Update()
    {
        textComponent.text += Random.Range(1, 5).ToString();
        if (textComponent.text.Length >= 2000)
        {
           textComponent.text = textComponent.text.Remove(0, 100); 
        }
    }

    public TextMeshProUGUI getTextComponent()
    {
        return textComponent;
    }
}
