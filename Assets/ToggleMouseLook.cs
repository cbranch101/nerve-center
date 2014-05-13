using UnityEngine;
using System.Collections;

public class ToggleMouseLook : MonoBehaviour {

	MouseLook playerMouseLook;
	// Use this for initialization
	void Start () {
		playerMouseLook = GameObject.Find ("Player").GetComponent<MouseLook>();
	}

	public void toggle() {
		playerMouseLook.enabled = playerMouseLook.enabled ? false : true;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
