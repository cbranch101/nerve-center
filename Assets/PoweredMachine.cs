using UnityEngine;
using System.Collections;

public class PoweredMachine : MonoBehaviour {

	public PowerSwitch powerSwitch;
	// Use this for initialization
	void Start () {
		powerSwitch.OnPowerUp += onPowerUp;
		powerSwitch.OnPowerDown += onPowerDown;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void onPowerUp() {
		this.BroadcastMessage("OnPowerUp");
	}

	void onPowerDown() {
		this.BroadcastMessage("OnPowerDown");
	}

}
