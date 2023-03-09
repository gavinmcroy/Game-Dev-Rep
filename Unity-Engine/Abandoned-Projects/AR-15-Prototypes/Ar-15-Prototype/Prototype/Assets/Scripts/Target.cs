using TMPro;
using UnityEngine;

/*!
 * Temporary Class that is being used to prototype hit scanning and ray casting
 */
public class Target : MonoBehaviour
{
    [SerializeField] private int health;
    [SerializeField] private TextMeshProUGUI text;

    /*!
     * <TEMPORARY METHOD>
     * Handles damage by passing parameter and subtracting health by parameter
     */
    public void TakeDamage(int damage)
    {
        health -= damage;
        text.text = health.ToString();
    }
}