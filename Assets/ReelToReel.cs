using UnityEngine;
using System.Collections;

public class ReelToReel : MonoBehaviour {

	Animator animator;
	// Use this for initialization
	void Start () {
		animator = gameObject.GetComponent<Animator>();
		animator.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnPowerUp() {
		animator.enabled = true;
	}

	void OnPowerDown() {
		animator.enabled = false;
	}


}
