using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "BedRoom")]
public class BedRoom : ScriptableObject,Room
{
    [Header("Room Specifics")]
    [SerializeField] int length = 1;
    [SerializeField] int width = 1;
    [SerializeField] string color = "";
    [Header("Room Furniture")]
    [SerializeField] bool lightsOn = false;
    [SerializeField] bool hasTv = false;
    [SerializeField] BathRoom bathroom;


    public bool HasLightsOn()
    {
        return lightsOn;
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

    public bool HasTv()
    {
        return hasTv;
    }

    public bool HasBathroom()
    {
        if (bathroom != null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}
