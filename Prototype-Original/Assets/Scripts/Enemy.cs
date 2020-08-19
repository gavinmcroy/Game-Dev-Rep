using System.Collections;
using TMPro;
using EZCameraShake;
using UnityEngine;
using UnityEngine.Serialization;

public class Enemy : MonoBehaviour
{
    // Start is called before the first frame update

    [Header("Enemy Stats")]
    [SerializeField] private int health = 20;
    
    [Header("Text Mesh Pro GUI")]
    [SerializeField] private TextMeshProUGUI textMeshProUGui;

    //[Header("Secret Message")] [SerializeField]
    //[TextArea(14,10)] private string hiddenMessage;
    //[SerializeField] private TextMeshProUGUI textMeshProUGuiHidden;
    //[SerializeField] private float _textTimer = .2f;
    //[SerializeField] private float minRange = .1f;
   // [SerializeField] private float maxRange = .3f;
    
    private SpriteRenderer _spriteRenderer;
    private float _timer;

    private void Awake()
    {
        textMeshProUGui.text = health.ToString();
        _spriteRenderer = GetComponent<SpriteRenderer>();
    }

    private void Update()
    {
        _timer += Time.deltaTime;
        if (_timer >= 4.5 && _timer < 5)
        {
            _spriteRenderer.color = Color.red;
        }
        else if (_timer >= 5)
        {
            _spriteRenderer.color = Color.white;
            _timer = 0f;
        }
    }

    public void DealDamage(int damage)
    {
        health -= damage;
        if (health <= 0)
        {
            CameraShaker.Instance.ShakeOnce(10f, 16f, 10f, 10);
            textMeshProUGui.text = "Why.";
            Destroy(gameObject,2f);
            //---Do death stuff
        }
        
        textMeshProUGui.text = health.ToString();
    }

     IEnumerator TmpTest()
    {
        while (true)
        {
           // yield return new WaitForSeconds(Random.Range(minRange,maxRange));
        }
    }
    
    
}