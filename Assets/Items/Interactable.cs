using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using Yarn.Unity;

public class Interactable : MonoBehaviour
{
    public MouseModeStringPair[] MouseNodeStrings;
    public string DefaultNode;

    private Dictionary<MouseMode, string> MouseNodeDictionary = new Dictionary<MouseMode, string>();

    public bool Interact(MouseMode mouseMode, DialogueRunner dialogueRunner)
    {
        if (!MouseNodeDictionary.ContainsKey(mouseMode))
        {
            if (string.IsNullOrEmpty(DefaultNode))
            {
                return false;
            }

            dialogueRunner.StartDialogue(DefaultNode);
            return true;
        }

        dialogueRunner.StartDialogue(MouseNodeDictionary[mouseMode]);
        return true;
    }

    private void Awake()
    {
        foreach (MouseModeStringPair pair in MouseNodeStrings)
        {
            MouseNodeDictionary[pair.Mode] = pair.NodeToRun;
        }
    }
}
