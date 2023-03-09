using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Card : MonoBehaviour
{
    [SerializeField] private Sprite flippedCard;
    private Sprite unFlippedCard;
    private Vector2 moveDirection;
    Vector2 pointToTravel;
    private SpriteRenderer spriteRenderer;
    private bool canMove = true;
    private int cardMoveSpeed = 3;
    private string cardName;

    void Start()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
        unFlippedCard = spriteRenderer.sprite;
        cardName = spriteRenderer.sprite.name;
    }


    void Update()
    {
        FlipAllCards();
        UnFlipAllCards();
    }

    public void FlipAllCards()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            spriteRenderer.sprite = flippedCard;
        }
    }

    public void UnFlipAllCards()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            spriteRenderer.sprite = unFlippedCard;
        }
    }

    public void MoveCard(Vector2 location)
    {
        if (canMove)
        {
            pointToTravel = (Vector2)spriteRenderer.transform.position - location;
            canMove = false;
            Debug.Log("Location to reach: " + pointToTravel);
        }
        if (pointToTravel.x <= 0)
        {
            moveDirection = Vector2.left;
        }
        if (pointToTravel.x >= 0)
        {
            moveDirection = Vector2.right;
        }
        if (pointToTravel.Equals(spriteRenderer.transform.position))
        {
            return;
        }
        Vector2 position = spriteRenderer.transform.position;
        position.x += moveDirection.x * cardMoveSpeed * Time.deltaTime;
        spriteRenderer.transform.position = position;
    }

}
