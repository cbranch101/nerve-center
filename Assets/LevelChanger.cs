using UnityEngine;
using System.Collections;

public class LevelChanger : MonoBehaviour {

	public Component powerableComponent;
	private IPowerable powerable;
	public float minimumLevel = 1f;

	// Use this for initialization
	void Start () {
		powerable = powerableComponent as IPowerable;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void handleLevelChange(float newLevel) {
		if(newLevel >= minimumLevel) {
			turnPowerableOn();
		} else {
			turnPowerableOff ();
		}
	}

	void turnPowerableOn() {
		if(!powerable.IsOn()) {
			powerable.TurnOn();
		} 
	}

	void turnPowerableOff() {
		if(powerable.IsOn()) {
			powerable.TurnOff();
		}
	}
}
