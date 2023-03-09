using UnityEngine;
using UnityEngine.SceneManagement;

namespace Navigation
{
    public class NavigationPrompt : MonoBehaviour
    {
        public Vector3 startingPosition;
        
        private void OnCollisionEnter2D(Collision2D collision)
        {
            GameState.SaveLastPosition = false;
            GameState.SetLastScenePosition(SceneManager.GetActiveScene().name,startingPosition);
            
            if (NavigationManager.CanNavigate(this.tag))
            {
                Debug.Log("Attempting to exit via "+tag);
                NavigationManager.NavigateTo(this.tag);
            }
        }

        private void OnTriggerEnter2D(Collider2D other)
        {
            if (NavigationManager.CanNavigate(this.tag))
            {
                Debug.Log("Attempting to exit via "+this.tag);
                NavigationManager.NavigateTo(this.tag);
            }
        }
    }
}
