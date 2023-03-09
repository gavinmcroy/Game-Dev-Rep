using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{
    [SerializeField] Attack enemy;
    [SerializeField] bool spawning = true;
    [SerializeField] float minSpawnDelay = 1;
    [SerializeField] float maxSpawnDelay = 5;

    IEnumerator Start()
    {
        while (spawning)
        {
            yield return new WaitForSeconds(Random.Range(minSpawnDelay, maxSpawnDelay));
            SpawnAttacker();
        }
    }

    private void SpawnAttacker()
    {
        Vector2 randomSpawn = new Vector2(Random.Range(-10, 10), transform.position.y);
        Instantiate(enemy,randomSpawn,Quaternion.identity);
    }
}
