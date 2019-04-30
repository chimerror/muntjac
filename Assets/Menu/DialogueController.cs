using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using Yarn;

public class DialogueController : Yarn.Unity.DialogueUIBehaviour
{
    public GameObject DialogueBox;
    public GameObject ConversationBox;
    public GameObject ConversationOptions;
    public Button OptionPrefab;

    private SuperTextMesh textMesh;
    private Yarn.OptionChooser SetSelectedOption;

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

            case "moveToCloseup":
                string returnScene = SceneManager.GetActiveScene().name;
                AsyncOperation loadCloseUpOperation = SceneManager.LoadSceneAsync(splitCommand[1]);

                while (!loadCloseUpOperation.isDone)
                {
                    yield return null;
                }
                PlayerController.Instance.SwitchToCloseupMode();
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
        ConversationBox.SetActive(true);
        int childCount = ConversationOptions.transform.childCount;
        for (int currentChild = childCount - 1; currentChild >= 0; currentChild--)
        {
            var childObject = ConversationOptions.transform.GetChild(currentChild).gameObject;
            if (childObject.name == "OptionPrefab")
            {
                continue;
            }
            Destroy(childObject);
        }

        for (int currentOption = 0; currentOption < optionsCollection.options.Count; currentOption++)
        {
            var option = optionsCollection.options[currentOption];
            var optionButton = Instantiate(OptionPrefab);
            optionButton.gameObject.SetActive(true);
            optionButton.transform.SetParent(ConversationOptions.transform, false);
            optionButton.enabled = true;
            var optionText = optionButton.GetComponentInChildren<Text>();
            optionText.text = option;
            optionText.enabled = true;
            var optionImage = optionButton.GetComponent<Image>();
            optionImage.enabled = true;
            SetSelectedOption = optionChooser;

            int selectedOption = currentOption;
            optionButton.onClick.AddListener(() =>
            {
                ConversationBox.SetActive(false);
                optionChooser(selectedOption);
                SetSelectedOption = null;
            });
        }

        while (SetSelectedOption != null)
        {
            yield return null;
        }
    }

    private void SetOption(int selectedOption, OptionChooser optionChooser)
    {
        Debug.Log(selectedOption);
        optionChooser(selectedOption);
        SetSelectedOption = null;
    }

    private void Awake()
    {
        textMesh = DialogueBox.GetComponentInChildren<SuperTextMesh>();
        DialogueBox.SetActive(false);
    }
}
