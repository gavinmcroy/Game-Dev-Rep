using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveScript : MonoBehaviour {
    [SerializeField] float screenUnits = 16f;
    [SerializeField] float minX = -4f;
    [SerializeField] float maxX = 15f; 
    
	//---Update is called once per frame
	void Update () {
        float mousePosition = Input.mousePosition.x / Screen.width * screenUnits;
        Vector2 shapePosition = new Vector2(transform.position.x, transform.position.y);
        shapePosition.x = Mathf.Clamp(mousePosition, minX, maxX);
        transform.position = shapePosition; 
	}
}
