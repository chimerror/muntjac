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
        Debug.Log("Command: " + command.text);
        string[] splitCommand = command.text.Split(' ');
        switch (splitCommand[0])
        {
            case "placeInInventory":
                var newInventoryItem = PlayerController.Instance.OutOfWorldInventoryItems[splitCommand[1]];
                Debug.Assert(newInventoryItem != null, "There was no out of world inventory item assigned for this command!");
                newInventoryItem.PlaceInInventory();
                break;

            case "removeFromInventory":
                Interactable inventoryItem = PlayerController.Instance.Inventory.Find(i => i.name.Equals(splitCommand[1]));
                PlayerController.Instance.Inventory.Remove(inventoryItem);
                if (PlayerController.Instance.ActiveInventoryItem == inventoryItem)
                {
                    PlayerController.Instance.ActiveInventoryItem = null;
                    if (PlayerController.Instance.CurrentMouseMode == MouseMode.Item)
                    {
                        PlayerController.Instance.CurrentMouseMode = MouseMode.Walk;
                    }
                }
                break;

            default:
                Debug.LogAssertion("Unknown command!");
                break;
        }

        yield break;
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
        yield return new WaitForEndOfFrame();
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
