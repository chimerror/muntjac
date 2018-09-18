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
    private float raycastDistance = 25f;

    private BoxCollider2D collider;
    private bool stopRight;
    private bool stopLeft;
    private bool stopUp;
    private bool stopDown;

    private void Awake()
    {
        collider = GetComponent<BoxCollider2D>();
    }

    private void Update()
    {
        Vector3 currentPosition = transform.position;
        float desiredHorizontal = Input.GetAxis("Horizontal");
        if ((desiredHorizontal > 0 && !stopRight) || (desiredHorizontal < 0 && !stopLeft))
        {
            currentPosition.x += desiredHorizontal * horizontalSpeed;
        }
        float desiredVertical = Input.GetAxis("Vertical");
        if ((desiredVertical > 0 && !stopUp) || (desiredVertical < 0 && !stopDown))
        {
            currentPosition.y += desiredVertical * verticalSpeed;
        }
        transform.position = currentPosition;
    }

    private void FixedUpdate()
    {
        RaycastHit2D[] results = new RaycastHit2D[5];
        stopRight = collider.Raycast(Vector2.right, results, raycastDistance) > 0;
        stopLeft = collider.Raycast(Vector2.left, results, raycastDistance) > 0;
        stopUp = collider.Raycast(Vector2.up, results, raycastDistance) > 0;
        stopDown = collider.Raycast(Vector2.down, results, raycastDistance) > 0;
    }
}
