using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.UI;
using Yarn.Unity;

[RequireComponent(typeof(SpriteRenderer))]
[RequireComponent(typeof(Image))]
public class Interactable : MonoBehaviour
{
    private const string InInventoryVariableFormat = "${0}_is_in_inventory";

    public MouseModeStringPair[] MouseNodeStrings;
    public string DefaultNode;

    private Dictionary<MouseMode, string> MouseNodeDictionary = new Dictionary<MouseMode, string>();

    public string InInventoryVariableName { get; private set; }

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

    [YarnCommand("placeInInventory")]
    public void PlaceInInventory()
    {
        PlayerController.Instance.Inventory.Add(this);
        gameObject.SetActive(false);
        Yarn.Value value = new Yarn.Value(true);
        VariableStorage.Instance.SetValue(InInventoryVariableName, value);
    }

    private void Awake()
    {
        foreach (MouseModeStringPair pair in MouseNodeStrings)
        {
            MouseNodeDictionary[pair.Mode] = pair.NodeToRun;
        }
        InInventoryVariableName = string.Format(InInventoryVariableFormat, name);
    }
}
