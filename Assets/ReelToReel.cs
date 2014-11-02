using UnityEngine;
using System.Collections;

public class ReelToReel : MonoBehaviour, IPowerable{

	Animator animator;
	private bool powered = false;
	// Use this for initialization
	void Start () {
		animator = gameObject.GetComponent<Animator>();
		animator.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnPowerUp() {
		powered = true;
	}

	void OnPowerDown() {
		powered = false;
		TurnOff();
	}

	public void TurnOn() {
		if(powered) {
			animator.enabled = true;
		}
	}

	public bool IsOn() {
		return animator.enabled;
	}

	public void TurnOff() {
		animator.enabled = false;
	}



}
