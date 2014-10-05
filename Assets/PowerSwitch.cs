using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PowerSwitch : MonoBehaviour {

	public delegate void PowerAction();
	public event PowerAction OnPowerUp;
	public event PowerAction OnPowerDown;
	private bool isPowered = false;
	private LockingMechanism lockingMechanism;
	public GameObject[] poweredItems;
	private List<IPowerable> powerables;

	// Use this for initialization
	void Start () {
		powerables = new List<IPowerable>();
		lockingMechanism = gameObject.GetComponent<LockingMechanism>();
		lockingMechanism.OnLockEnter += onLockEnter;
		lockingMechanism.OnLockExit += onLockExit;
		registerEventsForPowerables();
	}

	void registerEventsForPowerables() {
		foreach(GameObject powerableObject in poweredItems) {
			IPowerable powerable = powerableObject.GetComponent(typeof(IPowerable)) as IPowerable;
			OnPowerUp += powerable.OnPowerUp;
			OnPowerDown += powerable.OnPowerDown;
		}


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
