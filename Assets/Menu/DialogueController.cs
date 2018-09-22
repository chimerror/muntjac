using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn;

public class DialogueController : Yarn.Unity.DialogueUIBehaviour
{
    public GameObject DialogueBox;

    private SuperTextMesh textMesh;

    public override IEnumerator RunCommand(Command command)
    {
        throw new System.NotImplementedException();
    }

    public override IEnumerator RunLine(Line line)
    {
        DialogueBox.SetActive(true);

        textMesh.Text = line.text;
        while (Input.anyKeyDown == false)
        {
            yield return null;
        }

        DialogueBox.SetActive(false);
    }

    public override IEnumerator RunOptions(Options optionsCollection, OptionChooser optionChooser)
    {
        throw new System.NotImplementedException();
    }

    private void Awake()
    {
        textMesh = DialogueBox.GetComponentInChildren<SuperTextMesh>();
        DialogueBox.SetActive(false);
    }
}
