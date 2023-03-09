using System.Collections;
using Classes;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ConversationManager : Singleton<ConversationManager>
{
    private bool _isTalking = false;
    private ConversationEntry _currentConversationLine;
    [SerializeField] private CanvasGroup dialogueBox;
    [SerializeField] private Image imageHolder;
    [SerializeField] private TextMeshProUGUI textHolder;

    protected ConversationManager()
    {
        
    }

    private IEnumerator DisplayConversation(Conversation conversation)
    {
        _isTalking = true;
        foreach (var conversationLine in conversation.conversationLines)
        {
            _currentConversationLine = conversationLine;
            textHolder.text = _currentConversationLine.conversationText;
            imageHolder.sprite = _currentConversationLine.displayPic;
            yield return new WaitForSeconds(3);
        }

        _isTalking = false;
    }

    public void StartConversation(Conversation conversation)
    {
        dialogueBox = GameObject.Find("Dialog Box").GetComponent<CanvasGroup>();
        imageHolder = GameObject.Find("Speaker Image").GetComponent<Image>();
        textHolder = GameObject.Find("Dialog Text").GetComponent<TextMeshProUGUI>();
        if (!_isTalking)
        {
            StartCoroutine(DisplayConversation(conversation));
        }
    }

    private void OnGUI()
    {
        if (_isTalking)
        {
            dialogueBox.alpha = 1;
            dialogueBox.blocksRaycasts = true;
        }
        else
        {
            dialogueBox.alpha = 0;
            dialogueBox.blocksRaycasts = false;
        }
    }
}