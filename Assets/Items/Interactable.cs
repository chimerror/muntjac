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
    private const string ItemApplicationNodeFormat = "{0}.AppliedTo.{1}";

    public MouseModeStringPair[] MouseNodeStrings;
    public string DefaultNode;
    public Texture2D Cursor;

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
        SetInventoryVariable(); // For cases where it's never been awoken.
        VariableStorage.Instance.SetValue(InInventoryVariableName, value);
    }

    public void UseItem(Interactable item, DialogueRunner dialogueRunner)
    {
        string itemApplicationNode = string.Format(ItemApplicationNodeFormat, item.name, name);
        if (dialogueRunner.NodeExists(itemApplicationNode))
        {
            dialogueRunner.StartDialogue(itemApplicationNode);
        }
        else
        {
            dialogueRunner.StartDialogue(DefaultNode);
        }
    }

    private void Awake()
    {
        foreach (MouseModeStringPair pair in MouseNodeStrings)
        {
            MouseNodeDictionary[pair.Mode] = pair.NodeToRun;
        }
        SetInventoryVariable();
    }

    private void Start()
    {
        var currentValue = VariableStorage.Instance.GetValue(InInventoryVariableName);
        if (currentValue != null && currentValue.AsBool && gameObject.transform.parent == null)
        {
            Destroy(gameObject);
        }
    }

    private void SetInventoryVariable()
    {
        InInventoryVariableName = string.Format(InInventoryVariableFormat, name);
    }
}
