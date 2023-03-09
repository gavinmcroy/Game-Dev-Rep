using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "BathRoom")]
public class BathRoom : ScriptableObject,Room
{
    [Header("Room Specifics")]
    [SerializeField] int length = 1;
    [SerializeField] int width = 1;
    [SerializeField] string color = "";
    [Header("Room Furniture")]
    [SerializeField] bool lightsOn = false;
    [SerializeField] bool hasShower = false;
    [SerializeField] bool hasSink = false;

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



    public bool HasShower()
    {
        return hasShower;
    }

    public bool HasSink()
    {
        return hasSink;
    }


}
