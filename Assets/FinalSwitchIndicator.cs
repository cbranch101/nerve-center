using UnityEngine;
using System.Collections;

public class FinalSwitchIndicator : MonoBehaviour {

	Material material;
	Color onColor;

	// Use this for initialization
	void Start () {
		material = gameObject.renderer.material;
		onColor = material.GetColor ("_SelfIllumination");
		setInactive();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void setInactive () {
		material.SetColor ("_SelfIllumination", Color.black);
		material.SetFloat("_SIBrightness", 0f);
	}

	public void setActive() {
		material.SetColor ("_SelfIllumination", onColor);
		material.SetFloat("_SIBrightness", 1.4f);
	}

}
