using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    [SerializeField]
    private float horizontalSpeed = 10f;

    [SerializeField]
    private float verticalSpeed = 10f;

    [SerializeField]
    private float mouseMoveSpeed = 10f;

    [SerializeField]
    private float raycastDistance = 25f;

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
        else if(Input.GetMouseButtonDown(0))
        {
            isMouseMoving = true;
            mouseMoveTarget = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        }

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
            if (stopRight || stopLeft || stopUp || stopDown)
            {
                isMouseMoving = false;
            }
            else
            {
                transform.position = Vector2.MoveTowards(transform.position, mouseMoveTarget, mouseMoveSpeed);
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
