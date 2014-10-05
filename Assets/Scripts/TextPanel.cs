using UnityEngine;
using System.Collections;

public class TextPanel : MonoBehaviour, IPowerable {
	
	private Material screenMaterial;
	// Use this for initialization
	void Start () {
		screenMaterial = gameObject.renderer.material;
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);

	}
	
	// Update is called once per frame
	void Update () {

	}

	public void OnPowerUp() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0.5f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 1f);
	}

	public void OnPowerDown() {
		screenMaterial.SetFloat("_ScanLinesIntensity", 0f);
		screenMaterial.SetFloat("_ScreenImageBrightness", 0f);
	}


}

public interface IPowerable {
	void OnPowerUp();

	void OnPowerDown();
}
