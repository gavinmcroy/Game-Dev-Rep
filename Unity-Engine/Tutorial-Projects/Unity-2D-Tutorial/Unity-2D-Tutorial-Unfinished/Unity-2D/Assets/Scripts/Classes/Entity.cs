using UnityEngine;

public class Entity : ScriptableObject
{
    [SerializeField] private new string name;
    [SerializeField] private int age;
    [SerializeField] private string faction;
    [SerializeField] private string occupation;
    [SerializeField] private int level;
    [SerializeField] private int health;
    [SerializeField] private int strength;
    [SerializeField] private int magic;
    [SerializeField] private int defense;
    [SerializeField] private int speed;
    [SerializeField] private int damage;
    [SerializeField] private int armor;
    [SerializeField] private int noOfAttacks;
    [SerializeField] private string weapon;
    [SerializeField] private Vector2 position;
}