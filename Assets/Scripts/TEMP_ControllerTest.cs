using UnityEngine;
using System.Collections;

public class TEMP_ControllerTest : MonoBehaviour {

	public bool started;
	[Range (0,1)]
	public float pulledUp;
	[Range (0,1)]
	public float lock1;
	[Range (0,1)]
	public float lock2;
	[Range (0,1)]
	public float lock3;
	[Range (0,1)]
	public float leverPulled;

	public Animator anim;
	public Light theLight;


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		anim.SetBool ("Cyl_Started", started);
		anim.SetFloat ("Cyl_Pulled", pulledUp);
		anim.SetFloat ("Lock1_Pulled", lock1);
		anim.SetFloat ("Lock2_Pulled", lock2);
		anim.SetFloat ("Lock3_Pulled", lock3);
		anim.SetFloat ("Lever_Pulled", leverPulled);

		float lightIntensityNormalized = Mathf.Clamp01( (pulledUp - 0.6f) * 20 );
		theLight.intensity = lightIntensityNormalized * 2.5f;
	}
}
