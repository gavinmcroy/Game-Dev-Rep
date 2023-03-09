using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Navigation
{
    public static class NavigationManager
    {
        public struct Route
        {
            public string RouteDescription;
            public bool CanTravel;
        }


        public static Dictionary<string, Route> RouteInformation = new Dictionary<string, Route>()
        {
            {
                "Overworld", new Route {RouteDescription = "Big Bad World", CanTravel = true}
            },

            {
                "Construction", new Route {RouteDescription = "Shits getting built", CanTravel = false}
            },
            {
                "Campsite", new Route {RouteDescription = "Fire is burning nice", CanTravel = false}
            },
            {
                "Town", new Route {RouteDescription = "Town is nice", CanTravel = true}
            }
        };

        public static String GetRouteInformation(string destination)
        {
            return RouteInformation.ContainsKey(destination) ? RouteInformation[destination].RouteDescription : null;
        }

        public static bool CanNavigate(string destination)
        {
            return RouteInformation.ContainsKey(destination) ? RouteInformation[destination].CanTravel : false;
        }

        public static void NavigateTo(string destination)
        {
            SceneManager.LoadScene(destination);
        }
    }
}