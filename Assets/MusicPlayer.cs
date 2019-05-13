using UnityEngine;
using System.Collections;

public class MusicPlayer : MonoBehaviour
{
    public AudioSource source;

    public void PlayMusic()
    {
        GameObject.FindGameObjectWithTag("music");
    }

    private void Start()
    {

    }

    private void Update()
    {
    }
}
