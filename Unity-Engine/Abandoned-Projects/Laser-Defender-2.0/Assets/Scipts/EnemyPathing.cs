using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyPathing : MonoBehaviour
{
    WaveConfig waveConfig;
    List<Transform> wavePoints;  
    private int wayPointIndex = 0;

    // Start is called before the first frame update
    void Start()
    {
        wavePoints = waveConfig.GetWayPoints();
        transform.position = wavePoints[wayPointIndex].transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        Pathing();
    }
    
    public void SetWaveConfig(WaveConfig waveConfig)
    {
        this.waveConfig = waveConfig;
    }

    private void Pathing()
    {
       
        if (wayPointIndex <= wavePoints.Count - 1)
        {
            var targetPosition = wavePoints[wayPointIndex].transform.position;
            var movementThisFrame = waveConfig.GetMoveSpeed() * Time.deltaTime;
            transform.position = Vector2.MoveTowards(transform.position, targetPosition, movementThisFrame);

            if (transform.position == targetPosition)
            {
                wayPointIndex++;
            }
        }
        else
        {
            Destroy(gameObject);
        }
    }
}
