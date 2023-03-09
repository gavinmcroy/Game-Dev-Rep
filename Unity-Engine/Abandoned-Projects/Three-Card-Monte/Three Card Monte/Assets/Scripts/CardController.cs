using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CardController : MonoBehaviour
{
    [SerializeField] int cardMoveSpeed =2;
    [SerializeField] List<Card> cardList;
    private List<Vector2> locations;

    void Start()
    {
        //locations.Add(new Vector2(-2, 0));
        //locations.Add(new Vector2(0, 0));
        //locations.Add(new Vector2(2, 0));
    }

    void Update()
    {
        Scramble();
    }

    private void Scramble()
    {
        //Vector2 randomTest = new Vector2(Random.Range(0f, 2f), 0);
        cardList[0].MoveCard(new Vector2(3,3));
    }

}
