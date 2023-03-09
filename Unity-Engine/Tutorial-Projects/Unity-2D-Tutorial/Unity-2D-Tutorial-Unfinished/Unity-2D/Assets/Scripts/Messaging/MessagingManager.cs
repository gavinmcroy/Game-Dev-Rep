using System;
using System.Collections.Generic;
using UnityEngine;

namespace Messaging
{
    public class MessagingManager : MonoBehaviour
    {
        public static MessagingManager Instance { get; private set; }
        private List<Action> subscribers = new List<Action>();

        private void Awake()
        {
            Debug.Log("Messaging Manager Started");
            if (Instance != null && Instance != this)
            {
                Destroy(gameObject);
            }

            Instance = this;
            DontDestroyOnLoad(gameObject);
        }

        public void Subscribe(Action subscriber)
        {
            Debug.Log("Subscriber Added");
            subscribers.Add(subscriber);
        }

        public void RemoveSubscriber(Action subscriber)
        {
            Debug.Log("Subscriber Removed");
            subscribers.Remove(subscriber);
        }

        public void ClearAllSubscribers()
        {
            subscribers.Clear();
        }

        public void BroadCast()
        {
            Debug.Log("Broadcast Requested, No. of Subscribers = "
                      + subscribers.Count);
            foreach (var subscriber in subscribers)
            {
                subscriber();
            }
        }
    }
}