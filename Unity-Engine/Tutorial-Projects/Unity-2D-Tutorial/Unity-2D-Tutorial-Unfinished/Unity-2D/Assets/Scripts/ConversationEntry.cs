using UnityEngine;

[System.Serializable]
public class ConversationEntry
{
    [SerializeField] public string speakingCharacterName;
    [SerializeField] public string conversationText;
    [SerializeField] public Sprite displayPic;
}