using UnityEditor;
using UnityEngine;

namespace Editor
{
    public class ConversationAssetCreator : MonoBehaviour
    {
        [MenuItem("Assets/Create/Conversation")]
        public static void CreateAsset()
        {
            CustomAssetUtility.CreateAsset<Conversation>();
        }
    }
}
