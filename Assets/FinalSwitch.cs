using UnityEngine;
using System.Collections;

public class FinalSwitch : MonoBehaviour {

	private Animator switchAnimator;

	// Use this for initialization
	void Start () {
		switchAnimator = GameObject.Find ("NASA_Control_FinalSwitch").GetComponent<Animator>();
		switchAnimator.SetBool("Cyl_Started", true);
		switchAnimator.SetFloat("Cyl_Pulled", 0);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
