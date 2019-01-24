using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
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

            case "moveToNextScene":
                string lastScene = SceneManager.GetActiveScene().name;
                AsyncOperation loadOperation = SceneManager.LoadSceneAsync(splitCommand[1]);

                while (!loadOperation.isDone)
                {
                    yield return null;
                }

                string spawnPointName = string.Format("{0}.SpawnPoint", lastScene);
                Debug.Log(spawnPointName);
                var spawnPoint = GameObject.Find(spawnPointName);
                PlayerController.Instance.transform.position = spawnPoint.transform.position;
                PlayerController.Instance.SetMouseTarget(spawnPoint.transform);
                break;

            case "disable":
                var objectToDisable = GameObject.Find(splitCommand[1]);
                objectToDisable.SetActive(false);
                var interactable = objectToDisable.GetComponent<Interactable>();
                if (interactable != null)
                {
                    interactable.SetDisabledVariable(true);
                }
                break;

            case "animate":
                var objectToAnimate = GameObject.Find(splitCommand[1]);
                var animator = objectToAnimate.GetComponent<Animator>();
                string animationName = string.Format("{0}Trigger", splitCommand[2]);
                animator.SetTrigger(animationName);
                break;

            case "pause":
                var time = float.Parse(splitCommand[1]);
                PlayerController.Instance.PauseInput();
                yield return new WaitForSeconds(time);
                PlayerController.Instance.ResumeInput();
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
