using UnityEngine;
using System.Collections;

public class LightArray : MonoBehaviour {

	public PowerSwitch powerSwitch;
	private Material targetMaterial;
	private Color onColor;
	// Use this for initialization
	void Start () {

		powerSwitch.OnPowerUp += onPowerUp;
		powerSwitch.OnPowerDown += onPowerDown;
		targetMaterial = gameObject.renderer.material;
		targetMaterial.SetFloat ("_FlashTime", 1000);
	}
	
	// Update is called once per frame
	void Update () {

	}
	
	void onPowerUp() {

	}
	
	void onPowerDown() {
	}
}
