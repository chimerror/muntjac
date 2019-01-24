using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BootstrapScript : MonoBehaviour
{
    public string firstScene;

    private void Awake()
    {
        StartCoroutine(LoadFirstScene());
    }

    private IEnumerator LoadFirstScene()
    {
        AsyncOperation loadOperation = SceneManager.LoadSceneAsync(firstScene);

        while (!loadOperation.isDone)
        {
            yield return null;
        }
    }
}
