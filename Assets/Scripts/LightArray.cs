using UnityEngine;
using System.Collections;

public class LightArray : MonoBehaviour {
	
	private Material targetMaterial;
	private Color onColor;
	// Use this for initialization
	void Start () {

		targetMaterial = gameObject.renderer.material;
		onColor = targetMaterial.GetColor ("_LightColor_Brightness");
		targetMaterial.SetColor("_LightColor_Brightness", Color.black);
	}
	
	// Update is called once per frame
	void Update () {

	}
	
	void OnPowerUp() {
		targetMaterial.SetColor("_LightColor_Brightness", onColor);
	}
	
	void OnPowerDown() {
		targetMaterial.SetColor("_LightColor_Brightness", Color.black);
	}
}
