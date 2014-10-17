using UnityEngine;
using System.Collections;

public class MainPower : MonoBehaviour {

	public PowerSwitch mainSwitch;
	public PowerSwitch rightSwitch;
	// Use this for initialization
	void Start () {
		mainSwitch.toggleEnabled();
		mainSwitch.OnPowerUp += rightSwitch.toggleEnabled;
		mainSwitch.OnPowerDown += rightSwitch.toggleEnabled;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void onPowerUp() {
		
	}

	void onPowerDown() {

	}

}
