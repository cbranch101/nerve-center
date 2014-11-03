﻿using UnityEngine;
using System.Collections;

public class MainPower : MonoBehaviour {

	public PowerSwitch mainSwitch;
	public PowerSwitch rightSwitch;
	public PowerSwitch centralSwitch;
	// Use this for initialization
	void Start () {
		mainSwitch.toggleEnabled();
		mainSwitch.OnPowerUp += rightSwitch.toggleEnabled;
		mainSwitch.OnPowerDown += rightSwitch.toggleEnabled;
		mainSwitch.OnPowerUp += centralSwitch.toggleEnabled;
		mainSwitch.OnPowerDown += centralSwitch.toggleEnabled;

		mainSwitch.OnPowerUp += onPowerUp;
		mainSwitch.OnPowerDown += onPowerDown;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void onPowerUp() {
		AudioController.Play("MainPowerBootup");
		AudioController.Play("BackgroundRumble");
	}

	void onPowerDown() {
		AudioController.Stop ("BackgroundRumble");
	}

}