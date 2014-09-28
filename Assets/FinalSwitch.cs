using UnityEngine;
using System.Collections;

public class FinalSwitch : MonoBehaviour {

	private Animator switchAnimator;
	private Light switchLight;

	// Use this for initialization
	void Start () {
		switchAnimator = GameObject.Find ("NASA_Control_FinalSwitch").GetComponent<Animator>();
		switchAnimator.SetBool("Cyl_Started", true);
		switchAnimator.SetFloat("Cyl_Pulled", 0);
		switchLight = GameObject.Find ("FinalSwitchLight").GetComponent<Light>();
	}
	
	// Update is called once per frame
	void Update () {
		setLightIntensity();
	}

	void setLightIntensity() {
		float lightIntensityNormalized = Mathf.Clamp01( (switchAnimator.GetFloat("Cyl_Pulled") - 0.6f) * 20 );
		switchLight.intensity = lightIntensityNormalized * 2.5f;
	}
	
}
