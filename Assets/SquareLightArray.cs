using UnityEngine;
using System.Collections;

public class SquareLightArray : MonoBehaviour, IPowerable {

	Material material;
	Color onColor;
	bool powered = false;
	bool isOn = false;
	// Use this for initialization
	void Start () {
		material = gameObject.renderer.material;
		onColor = material.GetColor("_LightColor_Brightness");
		TurnOff();

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnPowerUp() {
		powered = true;
	}

	void OnPowerDown() {
		powered = false;
		TurnOff();
	}

	public void TurnOn() {
		if(powered) {
			material.SetColor("_LightColor_Brightness", onColor);
			isOn = true;
		}
	}

	public void TurnOff() {
		material.SetColor("_LightColor_Brightness", Color.black);
		isOn = false;
	}

	public bool IsOn() {
		return isOn;
	}



}
