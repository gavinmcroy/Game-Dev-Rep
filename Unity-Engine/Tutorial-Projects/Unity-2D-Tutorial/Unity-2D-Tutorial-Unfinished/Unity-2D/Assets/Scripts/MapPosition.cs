using System;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MapPosition : MonoBehaviour
{
    private void Awake()
    {
        var lastPosition = GameState.GetLastScenePosition((SceneManager.GetActiveScene().name));
        if (lastPosition != Vector3.zero)
        {
            transform.position = lastPosition;
        }
    }

    private void OnDestroy()
    {
        if (GameState.SaveLastPosition)
        {
            GameState.SetLastScenePosition(SceneManager.GetActiveScene().name, transform.position);
        }
    }
}
