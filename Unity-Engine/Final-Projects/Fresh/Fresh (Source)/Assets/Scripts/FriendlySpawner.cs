using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FriendlySpawner : MonoBehaviour
{
    [SerializeField] Attack friendly;
    [SerializeField] int spawnHeight = 10;
    [SerializeField] int costToPurchase;
    [SerializeField] AudioClip buySound;

    private void OnTriggerStay2D(Collider2D collision)
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (GameController.instance.GetScore() >= costToPurchase )
            {
                GameController.instance.RemoveScore(costToPurchase);
                Player player = collision.GetComponent<Player>();
                if (player != null)
                {
                    AudioController.instance.RandomSFX(buySound);
                    Instantiate(friendly, new Vector2(transform.position.x, spawnHeight), Quaternion.identity);
                }
            }
        }
    }

}
