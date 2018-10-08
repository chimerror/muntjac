using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class InventoryScreen : MonoBehaviour
{
    private void OnEnable()
    {
        foreach (Interactable interactable in PlayerController.Instance.Inventory)
        {
            var instantiatedObject = Instantiate(interactable, transform);
            instantiatedObject.name = interactable.name;
            instantiatedObject.gameObject.SetActive(true);
            instantiatedObject.GetComponent<SpriteRenderer>().enabled = false;
            instantiatedObject.GetComponent<Image>().enabled = true;
        }
    }

    private void OnDisable()
    {
        foreach (Interactable interactable in GetComponentsInChildren<Interactable>())
        {
            Destroy(interactable.gameObject);
        }
    }
}
