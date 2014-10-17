using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PowerSwitch : MonoBehaviour {

	bool isEnabled = false;
	public delegate void PowerAction();
	public event PowerAction OnPowerUp;
	public event PowerAction OnPowerDown;
	private bool isPowered = false;
	private LockingMechanism lockingMechanism;
	public string flipSoundName = "none";
	public StatusLight statusLight;
	public Light spotlight;


	void Awake() {
		spotlight.enabled = false;
	}
	// Use this for initialization
	void Start () {
		lockingMechanism = gameObject.GetComponent<LockingMechanism>();
		lockingMechanism.OnLockEnter += onLockEnter;
		lockingMechanism.OnLockExit += onLockExit;

	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void toggleEnabled() {
		isEnabled = isEnabled ? false : true;
		if(isEnabled) {
			enable();
		} else {
			disable();
		}
	}

	void enable() {
		spotlight.enabled = true;
		statusLight.setStandby();
	}

	void disable() {
		spotlight.enabled = false;
		statusLight.setFullyOff();
	}




	void togglePower() {
		isPowered = isPowered ? false : true;
		if(isPowered) {

			statusLight.setActive();
			if(OnPowerUp != null) {	
				OnPowerUp();
			}

		} else {
			statusLight.setStandby();
			if(OnPowerDown != null) {
				OnPowerDown();
			}
		}
	}

	void onLockEnter(bool isFlipped) {
		if(isFlipped) {
			AudioController.Play (flipSoundName, gameObject.transform);
		}
		if(isFlipped && !isPowered && isEnabled) {

			togglePower();
		}
	}

	void onLockExit(bool isFlipped) {
		if(isFlipped && isPowered && isEnabled) {
			togglePower();
		}
	}





}
