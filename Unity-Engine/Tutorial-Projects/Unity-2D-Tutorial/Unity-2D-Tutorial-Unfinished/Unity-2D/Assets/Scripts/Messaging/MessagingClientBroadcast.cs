using UnityEngine;

namespace Messaging
{
    public class MessagingClientBroadcast : MonoBehaviour
    {
        private void OnTriggerEnter2D(Collider2D other)
        {
            MessagingManager.Instance.BroadCast();
        }
    }
}
