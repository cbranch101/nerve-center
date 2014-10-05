using UnityEngine;
using System.Collections;

public class IncrementalClickSound : MonoBehaviour {

	public string soundName = "none";
	private float lastPosition = 0f;
	public float incrementAmount = .5f;
	// Use this for initialization
	void Start () {
		MechanicalMove targetMechanicalMove = gameObject.GetComponent<MechanicalMove>();
		targetMechanicalMove.OnMechanicalMove += onLockMove;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void onLockMove(Vector2 position, Vector2 speed) {
		float amountMoved = Mathf.Abs (lastPosition - position.x);
		if(amountMoved >= incrementAmount) {
			lastPosition = position.x;
			AudioController.Play (soundName);
		}

	}
}
