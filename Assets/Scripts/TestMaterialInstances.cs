using UnityEngine;
using System.Collections;

public class TestMaterialInstances : MonoBehaviour {

	public bool powerSwitch;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if (powerSwitch == true)
		{
			this.renderer.material.SetFloat ("_ScreenImageBrightness", 1.5f);
			this.renderer.material.SetFloat ("_ScanGradientIntensity", 1);
		}
		if (powerSwitch == false)
		{
			this.renderer.material.SetFloat ("_ScreenImageBrightness", 0);
			this.renderer.material.SetFloat ("_ScanGradientIntensity", 0);
		}
	}
}
