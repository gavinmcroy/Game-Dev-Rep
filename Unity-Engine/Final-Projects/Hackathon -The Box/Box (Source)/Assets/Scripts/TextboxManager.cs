using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TextboxManager : MonoBehaviour
{
    public TextMesh text;
    public TextAsset textFile;
    public string[] textLines;
    public int currentLine;
    public int endLine;

    public bool isActive = false;

    public float typeSpeed;

    private bool isDone = false;
    private bool isTyping = false;
    private bool cancelType = false;
    private bool startType = false;


    // Use this for initialization
    void Start()
    {
        if (textFile != null)
        {
            textLines = (textFile.text.Split('\n'));
        }

        if (endLine == 0)
        {
            endLine = textLines.Length - 1;
        }
    }

    void Update()
    {

        if (!isActive)
        {
            return;
        }

        if (!startType)
        {
            textLines[currentLine] = textLines[currentLine].Replace("\\n", "\n");

            //Take the line split it by a blink node

            //put blink text into blink function

            StartCoroutine(TextScroll(textLines[currentLine]));
            startType = true;
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (!isTyping)
            {
                //currentLine++;
                

                //textLines[currentLine] = textLines[currentLine].Replace("\\n", "\n");
                //StartCoroutine(TextScroll(textLines[currentLine]));
            }

            else if (isTyping && !cancelType)
            {
                cancelType = true;
            }
        }

        if (currentLine > endLine)
        {
            currentLine = textLines.Length - 1;
            isDone = true;
            Destroy(this);
        }

        if(!isTyping && Input.GetKeyDown(KeyCode.Y) && currentLine<1)
        {
            currentLine = 1;
            
            textLines[currentLine] = textLines[currentLine].Replace("\\n", "\n");
            StartCoroutine(TextScroll(textLines[currentLine]));

        }

        if(!isTyping && Input.GetKeyDown(KeyCode.Space) && currentLine == 1)
        {
            currentLine = 2;

            textLines[currentLine] = textLines[currentLine].Replace("\\n", "\n");
            StartCoroutine(TextScroll(textLines[currentLine]));
        }

        if (!isTyping && (Input.GetKeyDown(KeyCode.N) ) && currentLine<3)
        {
            currentLine = 3;
            textLines[currentLine] = textLines[currentLine].Replace("\\n", "\n");
            StartCoroutine(TextScroll(textLines[currentLine]));
        }
        if (!isTyping && Input.GetKeyDown(KeyCode.Space) && currentLine == 3)
        {
            currentLine = 4;

            textLines[currentLine] = textLines[currentLine].Replace("\\n", "\n");
            StartCoroutine(TextScroll(textLines[currentLine]));
        }
        if(!isTyping && Input.GetKeyDown(KeyCode.Space) && (currentLine == 2 || currentLine == 4))
        {
            SceneManager.LoadScene("Normal");
        }
    }

    private IEnumerator TextScroll(string lineofText)
    {
        int letter = 0;
        text.text = "";
        isTyping = true;
        cancelType = false;

        while (isTyping && !cancelType && letter < lineofText.Length - 1)
        {

            //ends typing for <font change> items
            string lineLetter = (lineofText[letter]).ToString();
            if (lineLetter == "<")
            {
                cancelType = true;
            }

            text.text += lineofText[letter];
            letter++;
            yield return new WaitForSeconds(typeSpeed);
        }

        text.text = lineofText;
        cancelType = false;
        isTyping = false;
    }

    public bool getDone()
    {
        return isDone;
    }


}