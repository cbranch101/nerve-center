using UnityEngine;
using System.Collections;

public class FinalSwitch : MonoBehaviour, IPowerable{

	public Animator switchAnimator;
	public Light switchLight;
	public FinalSwitchIndicator switchIndicator;
	bool powered = false;
	bool isOn = false;

	// Use this for initialization
	void Start () {
		switchAnimator.SetFloat("Cyl_Pulled", 0);
	}

	void enableSwitch() {
		switchAnimator.SetBool("Cyl_Started", true);
	}

	void disableSwitch() {
		switchAnimator.SetBool("Cyl_Started", false);
	}

	// Update is called once per frame
	void Update () {
		setLightIntensity();
	}

	void setLightIntensity() {
		float lightIntensityNormalized = Mathf.Clamp01( (switchAnimator.GetFloat("Cyl_Pulled") - 0.6f) * 20 );
		switchLight.intensity = lightIntensityNormalized * 2.5f;
	}

	void OnPowerUp() {
		powered = true;
	}

	void OnPowerDown() {
		powered = false;
	}

	public void TurnOn() {
		if(powered) {
			enableSwitch();
			switchIndicator.setActive();
		}
	}

	public void TurnOff() {
		disableSwitch();
		switchIndicator.setInactive();
	}

	public bool IsOn() {
		return isOn;
	}


	
}
