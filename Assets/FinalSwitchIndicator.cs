using UnityEngine;
using System.Collections;

public class FinalSwitchIndicator : MonoBehaviour {

	Material material;
	Color onColor;

	// Use this for initialization
	void Start () {
		material = gameObject.renderer.material;
		turnOff();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnPowerUp() {
		turnOn();
	}

	void OnPowerDown() {
		turnOff();
	}

	void turnOff() {
		material.SetColor ("_SelfIllumination", Color.black);
		material.SetFloat("_SIBrightness", 0f);

	}

	void turnOn() {
		material.SetColor ("_SelfIllumination", onColor);
		material.SetFloat("_SIBrightness", 1.4f);

	}


}
