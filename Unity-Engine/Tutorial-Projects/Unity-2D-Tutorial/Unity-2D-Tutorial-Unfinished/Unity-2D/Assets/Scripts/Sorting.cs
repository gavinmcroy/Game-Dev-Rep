using UnityEngine;

public class Sorting : MonoBehaviour
{
    [SerializeField] private Transform player;

    private void Update()
    {
        if (transform.position.y >= player.transform.position.y)
        {
            Debug.Log("Behind player");
            GetComponent<SpriteRenderer>().sortingOrder =
                (player.GetComponent<SpriteRenderer>().sortingOrder) - 1;
        }

        if (transform.position.y < player.transform.position.y)
        {
            Debug.Log("In front of player");
            GetComponent<SpriteRenderer>().sortingOrder =
                (player.GetComponent<SpriteRenderer>().sortingOrder) + 1;
        }
    }
}