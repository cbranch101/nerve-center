using UnityEngine;
using System.Collections;

public class TextPanel : MonoBehaviour {
	
	private Material screenMaterial;
	private bool powered;
	public StatusLight statusLight;
	public string powerSound;
	public FlipSwitchOnGrab powerSwitch;

	// Use this for initialization
	void Start () {
		screenMaterial = gameObject.renderer.material;
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
		powerSwitch.OnFlipDown += turnOnScreen;
		powerSwitch.OnFlipUp += turnOffScreen;
	}
	
	// Update is called once per frame
	void Update () {

	}

	void turnOnScreen() {
		AudioController.Play ("SwitchFlip", transform);	
		if(powered) {
			AudioController.Play ("SwitchFlip", transform);	
			AudioController.Play (powerSound, transform);
			screenMaterial.SetFloat("_ScanLinesIntensity", 0.5f);
			screenMaterial.SetFloat("_ScreenImageBrightness", 1f);
			statusLight.setActive();
		}
	}

	void turnOffScreen() {
		AudioController.Play ("SwitchFlip", transform);			
		if(powered) {
			screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
			screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
			statusLight.setStandby();
		}
	}

	public void OnPowerUp() {
		powered = true;
		statusLight.setStandby();
	}

	public void OnPowerDown() {
		powered = false;
		statusLight.setFullyOff();
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
	}


}
