using UnityEngine;
using System.Collections;

public class PostPickerSound : MonoBehaviour {

	// Use this for initialization
	void Start () {
		turnOn ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void turnOn() {
		AudioController.Play ("Bootup");
		AudioController.Play ("Ambient bootup");
	}
}
