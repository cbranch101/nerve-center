using UnityEngine;
using System.Collections;
using System.Linq;

public class GrabTarget : MonoBehaviour {

	private bool isGrabbed;
	private Crosshair crosshair;
	public bool IsGrabbed {
		get {
			return isGrabbed;
		}
		set{
			bool willBeGrabbed = value;
			if(!isGrabbed && willBeGrabbed) {
				triggerOnGrabEnter();
			}

			if(isGrabbed && !willBeGrabbed) {
				triggerOnGrabExit();
			}

			isGrabbed = willBeGrabbed;
		}
	}

	public delegate void GrabAction();
	public event GrabAction OnGrab;
	public event GrabAction OnGrabEnter;
	public event GrabAction OnGrabExit;
	
	public MouseOverTarget mouseOverTarget;
	// Use this for initialization
	// Update is called once per frame
	void Start () {
		crosshair = GameObject.Find ("Mouse").GetComponent<Crosshair>();
	}


	void Update() {

		if(!IsGrabbed) {
			IsGrabbed = mouseOverTarget.targetIsMousedOver() ? Input.GetMouseButton(0) : false;
		} else {
			IsGrabbed = Input.GetMouseButton(0);
		}

		if(IsGrabbed) {
			triggerGrabbed();
		}
	}

	void triggerGrabbed() {
		if(OnGrab != null) {
			OnGrab();
		}
	}

	void triggerOnGrabEnter() {
		crosshair.hide();
		if(OnGrabEnter != null) {
			OnGrabEnter();
		}
	}


	void triggerOnGrabExit() {
		crosshair.show();
		if(OnGrabExit != null) {
			OnGrabExit();
		}
	}

	public bool targetIsGrabbed() {
		return isGrabbed;
	}
	

}