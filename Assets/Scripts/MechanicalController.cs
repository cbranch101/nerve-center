﻿using UnityEngine;
using System.Collections;

public class MechanicalController : MonoBehaviour {

	public MechanicalMove mechanicalMove;
	public Animator animator;
	public string xPositionParameter = "none";
	public string yPositionParameter = "none";
	public bool isTwoDimensional = false;
	public AnimationCurve curve;
	// Use this for initialization
	void Start () {
		mechanicalMove.OnMechanicalMove += onMechanicalMove;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void onMechanicalMove(Vector2 position, Vector2 speed) {
		float xPosition = position.x;
		if(curve != null) {
			xPosition = curve.Evaluate(xPosition);
		}
		animator.SetFloat(xPositionParameter, xPosition);
		if(isTwoDimensional) {
			animator.SetFloat(yPositionParameter, position.y);
		}
	}


}