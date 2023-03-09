using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ButtonController : MonoBehaviour
{
    [SerializeField] private GameObject loadingImage;
    [SerializeField] private AudioClip buttonPressed;
    public static ButtonController instance;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }

    public void ChangeScene(int sceneIndex)
    {
        AudioController.instance.RandomSFX(buttonPressed);
        if (loadingImage != null)
        {
            loadingImage.SetActive(true);
        }
        SceneManager.LoadScene(sceneIndex);
    }

    public void OnApplicationQuit()
    {
        AudioController.instance.RandomSFX(buttonPressed);
        Application.Quit();
    }
}
