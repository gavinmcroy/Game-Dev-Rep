using Classes;
using UnityEngine;

namespace Messaging
{
    public class MessagingClientReciever : MonoBehaviour
    {
        private void Start()
        {
            MessagingManager.Instance.Subscribe(PlayerIsTryingToLeave);
        }

        private void PlayerIsTryingToLeave()
        {
            var dialog = GetComponent<ConversationComponent>();
            if (dialog != null)
            {
                if (dialog.conversations != null && dialog.conversations.Length > 0)
                {
                    var conversation = dialog.conversations[0];
                    if (conversation != null)
                    {
                        ConversationManager.Instance.StartConversation(conversation);
                    }
                }
            }
        }
    }
}