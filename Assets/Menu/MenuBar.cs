using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class MenuBar : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public GameObject MenuButtons;
    public PlayerController Player;

    public void OnPointerEnter(PointerEventData eventData)
    {
        MenuButtons.SetActive(true);
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        MenuButtons.SetActive(false);
    }

    public void OnWalkClicked()
    {
        Player.CurrentMouseMode = MouseMode.Walk;
    }

    public void OnLookClicked()
    {
        Player.CurrentMouseMode = MouseMode.Look;
    }

    public void OnTouchClicked()
    {
        Player.CurrentMouseMode = MouseMode.Touch;
    }

    public void OnTasteClicked()
    {
        Player.CurrentMouseMode = MouseMode.Taste;
    }

    public void OnSpeakClicked()
    {
        Player.CurrentMouseMode = MouseMode.Speak;
    }

    public void OnZipperClicked()
    {
        Player.CurrentMouseMode = MouseMode.Zipper;
    }
}
