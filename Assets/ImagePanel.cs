using UnityEngine;
using System.Collections;

public class ImagePanel : MonoBehaviour, IPowerable {

	private Material screenMaterial;
	// Use this for initialization
	void Start () {
		screenMaterial = gameObject.renderer.material;
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScanGradientIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	public void OnPowerUp() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0.5f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 1f);
		screenMaterial.SetFloat("_ScanGradientIntensity", 0.5f);
	}
	
	public void OnPowerDown() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
		screenMaterial.SetFloat("_ScanGradientIntensity", 0f);
	}
}
