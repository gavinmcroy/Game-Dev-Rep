using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveScript : MonoBehaviour {
    [SerializeField] readonly float screenSize = 16f;
    [SerializeField] readonly float minX = 1f;
    [SerializeField] readonly float maxX = 15f;
	
    void Start () {
		
    }
	
    void Update () {
        float mousePos = (Input.mousePosition.x / Screen.width) * screenSize;
        Vector2 paddlePos = new Vector2(transform.position.x, transform.position.y)
        {
            x = Mathf.Clamp(mousePos, minX, maxX)
        };
        transform.position = paddlePos;
    }
}