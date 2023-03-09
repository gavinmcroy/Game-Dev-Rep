using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeathCollectible : MonoBehaviour
{
    [SerializeField] int healthFromPack=1;
    public AudioClip healthCollected;

    void OnTriggerEnter2D(Collider2D collision)
    {
        RubyController rubyController = collision.GetComponent<RubyController>();
        if (rubyController != null)
        {
            if (rubyController.GetCurrentHealth<rubyController.GetMaxHealth)
            {
                rubyController.ChangeHealth(healthFromPack);
                Destroy(gameObject);
                rubyController.PlaySound(audioClip:healthCollected);
            }
        }
    }

}
