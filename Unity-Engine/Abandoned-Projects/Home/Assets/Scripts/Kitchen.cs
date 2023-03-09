using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Kitchen")]
public class Kitchen : ScriptableObject, Room
{
    [Header("Room Specifics")]
    [SerializeField] int length = 1;
    [SerializeField] int width = 1;
    [SerializeField] string color = "";
    [Header("Room Furniture")]
    [SerializeField] bool lightsOn = false;
    [SerializeField] bool hasOven = false;
    [SerializeField] bool hasMicrowave = false;
    [SerializeField] bool hasDishWasher = false;
    [SerializeField] bool hasRefrigerator = false;

    public bool HasLightsOn()
    {
        return lightsOn;
    }

    public void SetLightsOn(bool lightsOn)
    {
        this.lightsOn = lightsOn;
    }

    public int GetRoomArea()
    {
        return length * width;
    }

    public string GetRoomColor()
    {
        return color;
    }

    public int GetVolume()
    {
        return 0;
    }

    public bool HasOven()
    {
        return hasOven;
    }

    public void SetOven(bool hasOven)
    {
        this.hasOven = hasOven;
    }

    public bool HasMicrowave()
    {
        return hasMicrowave;
    }

    public bool HasDishWasher()
    {
        return hasDishWasher;
    }

    public bool HasRefrigerator()
    {
        return hasRefrigerator;
    }



}
