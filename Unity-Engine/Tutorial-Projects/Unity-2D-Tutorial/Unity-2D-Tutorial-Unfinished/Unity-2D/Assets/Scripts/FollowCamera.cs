using UnityEngine;

public class FollowCamera : MonoBehaviour
{
    [SerializeField] private float xOffSet = 0f;
    [SerializeField] private float yOffSet = 0f;
    [SerializeField] private Transform player;

    private void LateUpdate()
    {
        var transform1 = this.transform;
        transform1.position = new Vector3(player.transform.position.x + xOffSet,
            transform1.position.y + yOffSet, -10);
    }
}