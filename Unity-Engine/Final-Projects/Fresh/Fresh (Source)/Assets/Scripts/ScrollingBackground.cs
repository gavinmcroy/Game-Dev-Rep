using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollingBackground : MonoBehaviour
{
    [SerializeField] float backGroundScrollSpeed = .05f;
    Material myMaterial;
    Vector2 offset;

    void Start()
    {
        myMaterial = GetComponent<Renderer>().material;
        offset = new Vector2(0, backGroundScrollSpeed);
    }

    
    void Update()
    {
        myMaterial.mainTextureOffset += offset * Time.deltaTime;
    }
}
