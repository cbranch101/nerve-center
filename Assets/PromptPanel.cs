using UnityEngine;
using System.Collections;

public class PromptPanel : MonoBehaviour {

	private Material screenMaterial;
	public StatusLight statusLight;
	// Use this for initialization
	void Start () {
		screenMaterial = gameObject.renderer.material;
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
		statusLight.setFullyOff();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void OnPowerUp() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0.5f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 5f);
		statusLight.setActive();
	}
	
	public void OnPowerDown() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
		statusLight.setFullyOff();
	}


}
