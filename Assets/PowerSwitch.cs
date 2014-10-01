using UnityEngine;
using System.Collections;

public class PowerSwitch : MonoBehaviour {

	public delegate void PowerAction();
	public event PowerAction OnPowerUp;
	public event PowerAction OnPowerDown;
	private bool isPowered = false;
	private LockingMechanism lockingMechanism;

	// Use this for initialization
	void Start () {
		lockingMechanism = gameObject.GetComponent<LockingMechanism>();
		lockingMechanism.OnLockEnter += onLockEnter;
		lockingMechanism.OnLockExit += onLockExit;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void togglePower() {
		isPowered = isPowered ? false : true;
		if(isPowered) {
			OnPowerUp();
		} else {
			OnPowerDown();
		}
	}

	void onLockEnter(bool isFlipped) {
		if(isFlipped) {
			togglePower();
		}
	}

	void onLockExit(bool isFlipped) {
		if(isFlipped) {
			togglePower();
		}
	}





}
