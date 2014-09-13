using UnityEngine;
using System.Collections;

public class TEMP_MainPowerControllerTest : MonoBehaviour {

	public bool power = false;

	public Animator anim;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		anim.SetBool ("Power", power);
	}
}