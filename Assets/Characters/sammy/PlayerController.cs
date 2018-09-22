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

    [SerializeField]
    private float horizontalSpeed = 10f;

    [SerializeField]
    private float verticalSpeed = 10f;

    [SerializeField]
    private float mouseMoveSpeed = 10f;

    [SerializeField]
    private float raycastDistance = 25f;

    private Dictionary<MouseMode, Texture2D> MouseCursorDictionary = new Dictionary<MouseMode, Texture2D>();
    private BoxCollider2D playerMoveCollider;
    [SerializeField]
    private bool stopRight;
    [SerializeField]
    private bool stopLeft;
    [SerializeField]
    private bool stopUp;
    [SerializeField]
    private bool stopDown;
    [SerializeField]
    private bool keepMoving = true;
    private Vector2 mouseMoveTarget;
    private RaycastHit2D[] results = new RaycastHit2D[5];
    private ContactFilter2D filter = new ContactFilter2D();

    private void Awake()
    {
        playerMoveCollider = GetComponent<BoxCollider2D>();
        foreach (MouseModeCursorPair pair in MouseCursors)
        {
            MouseCursorDictionary[pair.Mode] = pair.Cursor;
        }
    }

    private void Update()
    {
        if (DialogueTextBox.activeInHierarchy || MenuBarButtons.activeInHierarchy)
        {
            Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
            return;
        }

        Vector3 currentPosition = transform.position;

        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, ray.direction, Mathf.Infinity);

            switch (CurrentMouseMode)
            {
                case MouseMode.Walk:
                    mouseMoveTarget = Camera.main.ScreenToWorldPoint(Input.mousePosition);
                    keepMoving = true;
                    break;

                case MouseMode.Look:
                    if (hit.collider != null)
                    {
                        GameObject clicked = hit.transform.gameObject;
                        Lookable lookable = clicked.GetComponent<Lookable>();
                        if (lookable != null)
                        {
                            DialogueRunner.StartDialogue(lookable.nodeToShow);
                        }
                    }
                    break;

                default:
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
                    CurrentMouseMode = MouseMode.Walk;
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
}
