using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn.Unity;

public class PlayerController : MonoBehaviour
{
    public MouseMode CurrentMouseMode = MouseMode.Walk;
    public MouseModeCursorPair[] MouseCursors;
    public DialogueRunner DialogueRunner;
    public GameObject DialogueTextBox;
    public GameObject ConversationBox;
    public MenuBar MenuBar;
    public GameObject MenuBarButtons;
    public GameObject InventoryMenu;
    public Collider2D PlayerInteractionCollider;
    public Interactable ActiveInventoryItem;
    public StringInteractablePair[] OutOfWorldInventoryItemPairs;

    [SerializeField]
    private float mouseMoveSpeed = 10f;

    [SerializeField]
    private float raycastDistance = 25f;

    [SerializeField]
    private float interactionDistance = 25f;

    [SerializeField]
    private string tooFarNode = null;

    private SpriteRenderer spriteRenderer = null;
    private bool isInCloseup = false;
    private bool pauseInput = false;
    private Dictionary<MouseMode, Texture2D> MouseCursorDictionary = new Dictionary<MouseMode, Texture2D>();
    private BoxCollider2D playerMoveCollider;
    private bool stopRight;
    private bool stopLeft;
    private bool stopUp;
    private bool stopDown;
    private bool keepMoving = true;
    private Vector2 mouseMoveTarget;
    private RaycastHit2D[] results = new RaycastHit2D[5];
    private ContactFilter2D filter = new ContactFilter2D();
    private Animator animator = null;

    public static PlayerController Instance { get; private set; }

    public List<Interactable> Inventory { get; private set; }

    public Dictionary<string, Interactable> OutOfWorldInventoryItems { get; private set; }

    public void PauseInput()
    {
        pauseInput = true;
    }

    public void ResumeInput()
    {
        pauseInput = false;
    }

    public void SetMouseTarget(Transform transform)
    {
        mouseMoveTarget = transform.position;
    }

    public void SwitchToCloseupMode()
    {
        transform.position = Vector2.zero;
        mouseMoveTarget = Vector2.zero;
        spriteRenderer.enabled = false;
        PlayerInteractionCollider.enabled = false;
        isInCloseup = true;
        MenuBar.SwitchToCloseupMode();
    }

    public void SwitchFromCloseupMode()
    {
        PlayerInteractionCollider.enabled = true;
        spriteRenderer.enabled = true;
        isInCloseup = false;
        var nextSceneObject = GameObject.Find("NextScene");
        var nextScene = nextSceneObject.GetComponent<NextScene>();
        DialogueRunner.StartDialogue(string.Format("{0}.Walk", nextScene.sceneName));
        MenuBar.SwitchToNormalMode();
        CurrentMouseMode = MouseMode.Walk;
    }

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else if (Instance != this)
        {
            Debug.LogAssertion("Two PlayerControllers present!");
            Destroy(gameObject);
        }

        DontDestroyOnLoad(gameObject);

        spriteRenderer = GetComponent<SpriteRenderer>();

        playerMoveCollider = GetComponent<BoxCollider2D>();

        animator = GetComponent<Animator>();

        foreach (MouseModeCursorPair pair in MouseCursors)
        {
            MouseCursorDictionary[pair.Mode] = pair.Cursor;
        }

        Inventory = new List<Interactable>();

        OutOfWorldInventoryItems = new Dictionary<string, Interactable>();
        foreach (StringInteractablePair pair in OutOfWorldInventoryItemPairs)
        {
            OutOfWorldInventoryItems[pair.PrefabName] = pair.Prefab;
        }
    }

    private void Update()
    {
        if (DialogueTextBox.activeInHierarchy ||
            MenuBarButtons.activeInHierarchy ||
            ConversationBox.activeInHierarchy ||
            pauseInput)
        {
            Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
            return;
        }

        if (InventoryMenu.activeInHierarchy && CurrentMouseMode == MouseMode.Walk)
        {
            CurrentMouseMode = MouseMode.Look;
        }

        if (isInCloseup && CurrentMouseMode == MouseMode.Walk)
        {
            CurrentMouseMode = MouseMode.ExitCloseup;
        }

        Vector3 currentPosition = transform.position;

        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, ray.direction, Mathf.Infinity);
            GameObject clicked = hit.collider != null ? hit.transform.gameObject : null;
            Interactable interactable = clicked != null ? clicked.GetComponent<Interactable>() : null;

            switch (CurrentMouseMode)
            {
                case MouseMode.Walk:
                    if (interactable != null)
                    {
                        if (!interactable.Interact(CurrentMouseMode, DialogueRunner))
                        {
                            mouseMoveTarget = Camera.main.ScreenToWorldPoint(Input.mousePosition);
                            keepMoving = true;
                        }
                    }
                    else if (!InventoryMenu.activeInHierarchy)
                    {
                        mouseMoveTarget = Camera.main.ScreenToWorldPoint(Input.mousePosition);
                        keepMoving = true;
                    }
                    break;

                case MouseMode.ExitCloseup:
                    SwitchFromCloseupMode();
                    break;

                default:
                    if (hit.collider != null)
                    {
                        if (interactable != null)
                        {
                            if (CurrentMouseMode == MouseMode.Inventory)
                            {
                                Interactable inventoryVersion = Inventory.Find(i => i.name == interactable.name);
                                if (inventoryVersion != null)
                                {
                                    ActiveInventoryItem = inventoryVersion;
                                    MouseCursorDictionary[MouseMode.Item] = interactable.Cursor;
                                    CurrentMouseMode = MouseMode.Item;
                                }
                            }
                            else if (CurrentMouseMode == MouseMode.Item)
                            {
                                Debug.Assert(ActiveInventoryItem != null);
                                if (CanInteract(hit.collider, interactable))
                                {
                                    interactable.UseItem(ActiveInventoryItem, DialogueRunner);
                                }
                                else
                                {
                                    DialogueRunner.StartDialogue(tooFarNode);
                                }
                            }
                            else if (CanInteract(hit.collider, interactable))
                            {
                                interactable.Interact(CurrentMouseMode, DialogueRunner);
                            }
                            else
                            {
                                DialogueRunner.StartDialogue(tooFarNode);
                            }
                        }
                    }
                    break;
            }
        }
        else if (Input.GetMouseButtonDown(1))
        {
            switch (CurrentMouseMode)
            {
                case MouseMode.Walk:
                    CurrentMouseMode = MouseMode.Look;
                    break;

                case MouseMode.Look:
                    CurrentMouseMode = MouseMode.Touch;
                    break;

                case MouseMode.Touch:
                    CurrentMouseMode = MouseMode.Taste;
                    break;

                case MouseMode.Taste:
                    CurrentMouseMode = MouseMode.Speak;
                    break;

                case MouseMode.Speak:
                    CurrentMouseMode = MouseMode.Zipper;
                    break;

                case MouseMode.Zipper:
                    if (ActiveInventoryItem != null)
                    {
                        CurrentMouseMode = MouseMode.Item;
                    }
                    else if (InventoryMenu.activeInHierarchy)
                    {
                        CurrentMouseMode = MouseMode.Inventory;
                    }
                    else
                    {
                        CurrentMouseMode = MouseMode.Walk;
                    }
                    break;

                case MouseMode.Item:
                    if (InventoryMenu.activeInHierarchy)
                    {
                        CurrentMouseMode = MouseMode.Inventory;
                    }
                    else
                    {
                        CurrentMouseMode = MouseMode.Walk;
                    }
                    break;

                case MouseMode.Inventory:
                    if (InventoryMenu.activeInHierarchy)
                    {
                        CurrentMouseMode = MouseMode.Look;
                    }
                    else
                    {
                        CurrentMouseMode = MouseMode.Walk;
                    }
                    break;

                case MouseMode.ExitCloseup:
                    CurrentMouseMode = MouseMode.Look;
                    break;

                default:
                    Debug.LogError("Unknown Mouse Mode!");
                    break;
            }
        }

        Cursor.SetCursor(MouseCursorDictionary[CurrentMouseMode], Vector2.zero, CursorMode.Auto);

        if (keepMoving && !Mathf.Approximately(Vector2.Distance((Vector2)transform.position, mouseMoveTarget), 0f))
        {
            Vector2 desiredPosition = Vector2.MoveTowards(transform.position, mouseMoveTarget, mouseMoveSpeed);
            Vector2 movementDirection = desiredPosition - (Vector2)transform.position;
            float movementAngle = Vector2.SignedAngle(Vector2.right, movementDirection);
            animator.SetFloat("WalkingAngle", movementAngle);
            animator.SetFloat("WalkingSpeed", movementDirection.magnitude);
            transform.position = desiredPosition;
            if (stopRight || stopLeft || stopUp || stopDown)
            {
                transform.position = currentPosition;
                keepMoving = false;
            }
        }
        else
        {
            animator.SetFloat("WalkingSpeed", 0);
        }
    }

    private void FixedUpdate()
    {
        filter.useTriggers = false;
        stopRight = playerMoveCollider.Raycast(Vector2.right, filter, results, raycastDistance) > 0;
        stopLeft = playerMoveCollider.Raycast(Vector2.left, filter, results, raycastDistance) > 0;
        stopUp = playerMoveCollider.Raycast(Vector2.up, filter, results, raycastDistance) > 0;
        stopDown = playerMoveCollider.Raycast(Vector2.down, filter, results, raycastDistance) > 0;
    }

    private bool CanInteract(Collider2D collider, Interactable interactable)
    {
        return CurrentMouseMode == MouseMode.Look ||
            isInCloseup == true ||
            VariableStorage.Instance.GetValue(interactable.InInventoryVariableName).AsBool ||
            collider == PlayerInteractionCollider ||
            collider.Distance(PlayerInteractionCollider).distance < interactionDistance;
    }
}
