using UnityEngine;
using System.Collections;

public class SquareLightArray : MonoBehaviour {

	Material material;
	Color onColor;
	// Use this for initialization
	void Start () {
		material = gameObject.renderer.material;
		onColor = material.GetColor("_LightColor_Brightness");
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
		material.SetColor("_LightColor_Brightness", Color.black);
	}

	void turnOn() {
		material.SetColor("_LightColor_Brightness", onColor);
	}

}
