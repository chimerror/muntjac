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
    public GameObject MenuBarButtons;
    public GameObject InventoryMenu;
    public Collider2D PlayerInteractionCollider;
    public Interactable ActiveInventoryItem;

    [SerializeField]
    private float mouseMoveSpeed = 10f;

    [SerializeField]
    private float raycastDistance = 25f;

    [SerializeField]
    private float interactionDistance = 25f;

    [SerializeField]
    private string tooFarNode;

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

    public static PlayerController Instance { get; private set; }

    public List<Interactable> Inventory { get; private set; }

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

        playerMoveCollider = GetComponent<BoxCollider2D>();
        foreach (MouseModeCursorPair pair in MouseCursors)
        {
            MouseCursorDictionary[pair.Mode] = pair.Cursor;
        }
        Inventory = new List<Interactable>();
    }

    private void Update()
    {
        if (DialogueTextBox.activeInHierarchy || MenuBarButtons.activeInHierarchy)
        {
            Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
            return;
        }

        if (InventoryMenu.activeInHierarchy && CurrentMouseMode == MouseMode.Walk)
        {
            CurrentMouseMode = MouseMode.Look;
        }

        Vector3 currentPosition = transform.position;

        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, ray.direction, Mathf.Infinity);

            switch (CurrentMouseMode)
            {
                case MouseMode.Walk:
                    if (!InventoryMenu.activeInHierarchy)
                    {
                        mouseMoveTarget = Camera.main.ScreenToWorldPoint(Input.mousePosition);
                        keepMoving = true;
                    }
                    break;

                default:
                    if (hit.collider != null)
                    {
                        GameObject clicked = hit.transform.gameObject;
                        Interactable interactable = clicked.GetComponent<Interactable>();
                        if (interactable != null)
                        {
                            if (CurrentMouseMode == MouseMode.Inventory)
                            {
                                ActiveInventoryItem = Inventory.Find(i => i.name == interactable.name);
                                MouseCursorDictionary[MouseMode.Inventory] = interactable.Cursor;
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
                    if (ActiveInventoryItem != null || InventoryMenu.activeInHierarchy)
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

                default:
                    Debug.LogError("Unknown Mouse Mode!");
                    break;
            }
        }

        Cursor.SetCursor(MouseCursorDictionary[CurrentMouseMode], Vector2.zero, CursorMode.Auto);

        if (keepMoving && (Vector2)transform.position != mouseMoveTarget)
        {
            Vector2 desiredPosition = Vector2.MoveTowards(transform.position, mouseMoveTarget, mouseMoveSpeed);
            transform.position = desiredPosition;
            if (stopRight || stopLeft || stopUp || stopDown)
            {
                transform.position = currentPosition;
                keepMoving = false;
            }
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
            VariableStorage.Instance.GetValue(interactable.InInventoryVariableName).AsBool ||
            collider.Distance(PlayerInteractionCollider).distance < interactionDistance;
    }
}
