using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class House : MonoBehaviour
{
    [SerializeField] List<BedRoom> bedRooms = new List<BedRoom>();
    [SerializeField] List<Kitchen> kitchen = new List<Kitchen>();
    [SerializeField] List<BathRoom> bathroom = new List<BathRoom>();
 

    void Start()
    {
        Debug.Log(houseArea());
    }

    void Update()
    {
        
    }

    public int houseArea()
    {
        int roomArea = 0;
        for(int i = 0; i<bedRooms.Count; i++)
        {
            roomArea += bedRooms[i].GetRoomArea();
        }
        for (int i = 0; i < kitchen.Count; i++)
        {
            roomArea += kitchen[i].GetRoomArea();
        }
        for (int i = 0; i < bathroom.Count; i++)
        {
            roomArea += bathroom[i].GetRoomArea();
        }
        return roomArea;
    }

}
