using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

public class AudioController : MonoBehaviour
{
    [SerializeField] AudioSource fxSounds;
    [SerializeField] AudioSource musicSounds;
    [SerializeField] AudioClip[] soundTrack;
    [SerializeField] float lowPitch = .95f;
    [SerializeField] float highPitch = 1.05f;
    [SerializeField] TextMeshProUGUI text;
    [SerializeField] GameObject canvas;
    public static AudioController instance;
    private int soundTrackIndex = 0;
    private string[] soundTrackNames = { "Celestial","Foggy Woods","Nocturnal Mysteries","Red " +
            "Carpet Wooden Floor","The Arrival","Windless Slopes" };


    void Awake()
    {
        if (instance == null)
        {
            instance = this;
            StopSoundTrack();
            DontDestroyOnLoad(this);
        }
        
        if(FindObjectsOfType(GetType()).Length > 1)
        {
            Destroy(gameObject);
        }
    }

    void Update()
    {
        SkipTrack();
        if (SceneManager.GetActiveScene().Equals(1) && !musicSounds.isPlaying)
        {
            StartSoundTrack();
        }
    }

    public void RandomSFX(params AudioClip[] clip)
    {
        int random = Random.Range(0, clip.Length);
        float randomPitch = Random.Range(lowPitch, highPitch);
        fxSounds.pitch = randomPitch;
        fxSounds.clip = clip[random];
        fxSounds.Play();
    }

    public void MuteSound()
    {
        fxSounds.volume = 0;
    }

    public void StopSoundTrack()
    {
        musicSounds.Stop();
        canvas.SetActive(false);
    }

    public void StartSoundTrack()
    {
        musicSounds.Play();
        canvas.SetActive(true);
        text.text = "Song: " + soundTrackNames[soundTrackIndex];
    }

    private void SkipTrack()
    {
        if (Input.GetKeyDown(KeyCode.T) && soundTrackIndex + 1 < soundTrack.Length)
        {
            soundTrackIndex++;
            Debug.Log(soundTrackIndex);
            text.text = "Song: " + soundTrackNames[soundTrackIndex];

            musicSounds.Stop();
            musicSounds.clip = soundTrack[soundTrackIndex];
            musicSounds.Play();

            if (soundTrackIndex >= soundTrack.Length - 1)
            {
                text.text = "Song: " + soundTrackNames[soundTrackIndex];
                musicSounds.clip = soundTrack[soundTrackIndex];
                soundTrackIndex = -1;
            }
        }
        //if (soundTrackIndex >= soundTrack.Length-1)
        //{
        //    soundTrackIndex = 0;
        //    //if (text != null)

        //    text.text = "Song: " + soundTrackNames[soundTrackIndex];
        //    musicSounds.clip = soundTrack[soundTrackIndex];
        //}
    }
}
