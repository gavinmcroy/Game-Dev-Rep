using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class FadeTransition : MonoBehaviour
{
    [SerializeField] RawImage fadeImage;
    private Color color;
    private bool fadeOut;
    private bool fadeIn = true;
    private bool isTransitioningOnce = true;
    private bool isLoading;
    private IEnumerator coroutine;
	public static FadeTransition instance;

    void Start()
    {
		instance = this;
        DontDestroyOnLoad(gameObject);
        color = fadeImage.GetComponent<RawImage>().color;
        fadeImage = fadeImage.GetComponent<RawImage>();
        coroutine = Check();
    }

    public void StartTransition()
	{
		coroutine = Check();
		StartCoroutine(coroutine);
	}

    private void Transition()
    {
        if (fadeOut && isTransitioningOnce)
        {
            if(color.a<=0)
            {
                fadeOut = false;
                fadeIn = true;
                isTransitioningOnce = false;
            }
            color.a -= Time.deltaTime;
            fadeImage.color = color;
        }
        else if (fadeIn && isTransitioningOnce)
        {
            if (color.a>=1)
            {
                fadeIn = false;
                fadeOut = true;     
            }
            color.a += Time.deltaTime;
            fadeImage.color = color;
        }
        if (color.a >= 1 && !isLoading)
        {
            SceneManager.LoadScene(1);
            isLoading = true;
        }
    }

    private void Reset()
    {
        isTransitioningOnce = true;
        fadeOut = false;
        fadeIn = true;
        isLoading = false;
    }

    IEnumerator Check()
    {
        while (isTransitioningOnce)
        {
            yield return new WaitForSeconds(.01f);
            Transition();
        }
        Reset();
    }


}
