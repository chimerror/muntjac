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
    private const string DisabledVariableFormat = "${0}_is_disabled";
    private const string ItemApplicationNodeFormat = "{0}.AppliedTo.{1}";

    public MouseModeStringPair[] MouseNodeStrings;
    public string DefaultNode;
    public Texture2D Cursor;

    private Dictionary<MouseMode, string> MouseNodeDictionary = new Dictionary<MouseMode, string>();

    public string InInventoryVariableName { get; private set; }

    public string DisabledVariableName { get; private set; }

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
        SetVariables(); // For cases where it's never been awoken.
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

    public void SetDisabledVariable(bool desiredValue)
    {
        Yarn.Value value = new Yarn.Value(desiredValue);
        SetVariables(); // For cases where it's never been awoken.
        VariableStorage.Instance.SetValue(DisabledVariableName, value);
    }

    private void Awake()
    {
        foreach (MouseModeStringPair pair in MouseNodeStrings)
        {
            MouseNodeDictionary[pair.Mode] = pair.NodeToRun;
        }
        SetVariables();
    }

    private void Start()
    {
        var currentInventoryValue = VariableStorage.Instance.GetValue(InInventoryVariableName);
        if (currentInventoryValue != null && currentInventoryValue.AsBool && gameObject.transform.parent == null)
        {
            Destroy(gameObject);
        }

        var currentDisabledValue = VariableStorage.Instance.GetValue(DisabledVariableName);
        if (currentDisabledValue != null && currentDisabledValue.AsBool && gameObject.transform.parent == null)
        {
            Destroy(gameObject);
        }
    }

    private void SetVariables()
    {
        InInventoryVariableName = string.Format(InInventoryVariableFormat, name);
        DisabledVariableName = string.Format(DisabledVariableFormat, name);
    }
}
