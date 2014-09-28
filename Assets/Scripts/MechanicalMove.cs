using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class MechanicalMove : MonoBehaviour {

	[HideInInspector]
	public Vector2 movementAmount;
	private Vector2 speed = new Vector2(0f, 0f);
	public float movementRate = 0.5f;
	public float xStart = 0.0f;
	public float yStart = 0.0f;
	public bool invertXMovement = false;
	public bool invertYMovement = false;
	public delegate void UpdateAction(Vector2 position, Vector2 speed);
	public event UpdateAction OnMechanicalMove;
	public event UpdateAction OnEnterMechanicalMove;
	public event UpdateAction OnExitMechanicalMove;

	private Vector2 position;
	private bool isMoving = false;
	public Vector2 Position {
		get {
			return position;
		}
		set {
			Vector2 newPosition = value;
			speed.x = newPosition.x - position.x;
			speed.y = newPosition.y - position.y;
			bool willBeMoving = (speed.x != 0f);
			newPosition.x = Mathf.Clamp(newPosition.x, 0f, 1f);
			newPosition.y = Mathf.Clamp(newPosition.y, 0f, 1f);
			position = newPosition;
			if(willBeMoving && !isMoving) {
				if(OnEnterMechanicalMove != null) {
					OnEnterMechanicalMove(position, speed);
				}

				isMoving = true;
			}

			if(!willBeMoving && isMoving) {
				if(OnExitMechanicalMove != null) {
					OnExitMechanicalMove(position, speed);
				}

				isMoving = false;
			}
		}
	}

	// Use this for initialization
	void Start () {
		Vector2 startPosition = new Vector2(xStart, yStart);
		Position = startPosition;
	}

	public Vector2 getSpeed() {
		return speed;
	}
	
	public void setStartPosition() {
		Vector2 startPosition = new Vector2(xStart, yStart);
		Position = startPosition;
	}

	// Update is called once per frame
	void Update () {
		updatePosition();
		if(OnMechanicalMove != null) {
			OnMechanicalMove(position, speed);
		}

	}
	
	void updatePosition() {
		Vector2 currentPosition = Position;
		currentPosition.x = getUpdatedPositionForAxis (movementAmount.x, currentPosition.x, invertXMovement);
		currentPosition.y = getUpdatedPositionForAxis (movementAmount.y, currentPosition.y, invertYMovement);
		Position = currentPosition;
	}

	float getUpdatedPositionAxis(float xMovement, float yMovement, float currentPosition, bool isInverted) {
		float inversionFactor = isInverted ? 1.0f : -1.0f;
		if(currentPosition >= 0.5f) {
			yMovement = yMovement * -1;
		}
		float updatedPosition = currentPosition + (Time.deltaTime * (xMovement + yMovement) * movementRate * inversionFactor);

		return Mathf.Clamp(updatedPosition, 0f, 1.0f);
	}

	float getUpdatedPositionForAxis(float movementAmount, float currentPosition, bool isInverted) {
		float inversionFactor = isInverted ? 1.0f : -1.0f;
		float updatedPosition = currentPosition + (Time.deltaTime * (movementAmount) * movementRate * inversionFactor);
		return Mathf.Clamp(updatedPosition, 0f, 1.0f);
	}




}

public interface UsesMechanicalPosition {

	void onSettingMechanicalPosition(Vector2 position);

}
