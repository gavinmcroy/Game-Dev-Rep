using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public interface Room 
{
    bool HasLightsOn();

    int GetRoomArea();

    string GetRoomColor();

    int GetVolume();
}
