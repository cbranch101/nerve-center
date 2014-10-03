using UnityEngine;
using System.Collections;

public class TextPanel : MonoBehaviour {

	public PowerSwitch powerSwitch;
	private Material screenMaterial;
	// Use this for initialization
	void Start () {

		powerSwitch.OnPowerUp += onPowerUp;
		powerSwitch.OnPowerDown += onPowerDown;
		screenMaterial = gameObject.renderer.material;
	}
	
	// Update is called once per frame
	void Update () {

	}

	void onPowerUp() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0.5f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 1f);
	}

	void onPowerDown() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
	}
}
