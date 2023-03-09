using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArrowSpawner : MonoBehaviour
{
    [SerializeField] Arrow arrow;
    [SerializeField] float spawnTime = 1f;
    bool spawn = true;

    private void Awake()
    {
        SpawnArrow();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.A))
        {
            spawn = false;
        }
    }

    private void SpawnArrow()
    {
        Instantiate(arrow, new Vector2(transform.position.x, transform.position.y), Quaternion.identity);

    }

    IEnumerator Start()
    {
        while (spawn)
        {
            yield return new WaitForSeconds(spawnTime);
            SpawnArrow();
        }
    }
}