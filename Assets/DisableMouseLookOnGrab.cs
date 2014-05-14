using UnityEngine;
using System.Collections;

public class DisableMouseLookOnGrab : MonoBehaviour {

	private MouseLook playerMouseLook;
	private MouseLook cameraMouseLook;
	public GrabTarget grabTarget;
	// Use this for initialization
	void Start () {
		playerMouseLook = GameObject.Find ("Player").GetComponent<MouseLook>();
		cameraMouseLook = GameObject.Find ("Main Camera").GetComponent<MouseLook>();
		grabTarget.OnGrabEnter += onGrabEnter;
		grabTarget.OnGrabExit += onGrabExit;
	}

	public void onGrabEnter() {
		playerMouseLook.enabled = false;
		cameraMouseLook.enabled = false;
	}

	public void onGrabExit() {
		playerMouseLook.enabled = true;
		cameraMouseLook.enabled = true;
	}

}
