using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn.Unity;

public class PlayerController : MonoBehaviour
{
    public MouseMode CurrentMouseMode = MouseMode.Walk;
    public MouseModeCursorPair[] MouseCursors;
    public DialogueRunner DialogueRunner;

    [SerializeField]
    private float horizontalSpeed = 10f;

    [SerializeField]
    private float verticalSpeed = 10f;

    [SerializeField]
    private float mouseMoveSpeed = 10f;

    [SerializeField]
    private float raycastDistance = 25f;

    private Dictionary<MouseMode, Texture2D> MouseCursorDictionary = new Dictionary<MouseMode, Texture2D>();
    private BoxCollider2D playerCollider;
    private bool stopRight;
    private bool stopLeft;
    private bool stopUp;
    private bool stopDown;
    private bool isMouseMoving;
    private Vector2 mouseMoveTarget;

    private void Awake()
    {
        playerCollider = GetComponent<BoxCollider2D>();
        foreach (MouseModeCursorPair pair in MouseCursors)
        {
            MouseCursorDictionary[pair.Mode] = pair.Cursor;
        }
    }

    private void Update()
    {
        Vector3 currentPosition = transform.position;
        float desiredHorizontal = Input.GetAxis("Horizontal");
        float desiredVertical = Input.GetAxis("Vertical");

        if (isMouseMoving && (desiredHorizontal != 0 || desiredVertical != 0))
        {
            isMouseMoving = false;
        }
        else if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, ray.direction, Mathf.Infinity);

            switch (CurrentMouseMode)
            {
                case MouseMode.Walk:
                    isMouseMoving = true;
                    mouseMoveTarget = Camera.main.ScreenToWorldPoint(Input.mousePosition);
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

        if (!isMouseMoving)
        {
            if ((desiredHorizontal > 0 && !stopRight) || (desiredHorizontal < 0 && !stopLeft))
            {
                currentPosition.x += desiredHorizontal * horizontalSpeed;
            }
            if ((desiredVertical > 0 && !stopUp) || (desiredVertical < 0 && !stopDown))
            {
                currentPosition.y += desiredVertical * verticalSpeed;
            }
            transform.position = currentPosition;
        }
        else if (isMouseMoving && (Vector2)transform.position != mouseMoveTarget)
        {
            Vector2 desiredPosition = Vector2.MoveTowards(transform.position, mouseMoveTarget, mouseMoveSpeed);
            Vector2 delta = (Vector2)transform.position - desiredPosition;
            if ((delta.x > 0 && !stopRight) || (delta.x < 0 && !stopLeft) || (delta.y > 0 && !stopUp) || (delta.y < 0 && !stopDown))
            {
                transform.position = desiredPosition;
            }
            else
            {
                isMouseMoving = false;
            }
        }
    }

    private void FixedUpdate()
    {
        RaycastHit2D[] results = new RaycastHit2D[5];
        stopRight = playerCollider.Raycast(Vector2.right, results, raycastDistance) > 0;
        stopLeft = playerCollider.Raycast(Vector2.left, results, raycastDistance) > 0;
        stopUp = playerCollider.Raycast(Vector2.up, results, raycastDistance) > 0;
        stopDown = playerCollider.Raycast(Vector2.down, results, raycastDistance) > 0;
    }
}
