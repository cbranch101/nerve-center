using UnityEngine;
using System.Collections;

public class FlipSwitchOnGrab : MonoBehaviour {

	public GameObject objectWithAnimator;
	private Animator animator;
	public delegate void FlipAction();
	public event FlipAction OnFlipUp;
	public event FlipAction OnFlipDown;
	public GrabTarget grabTarget;
	public string clickSoundName;
	private bool flipped = false;
	
	// Use this for initialization
	void Start () {
		grabTarget.OnGrabEnter += onGrabEnter;
		grabTarget.OnGrabExit += onGrabExit;
		animator = objectWithAnimator.GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	public void onGrabEnter() {
		flipped = flipped ? false : true;
		animator.SetBool ("Power", flipped);
		if(clickSoundName != null) {
			AudioController.Play (clickSoundName);
		}

		if(flipped && (OnFlipDown != null)) {
			OnFlipDown();
		}

		if(!flipped && (OnFlipUp != null)) {
			OnFlipUp();
		}

	}	

	public void onGrabExit() {

	}

}
