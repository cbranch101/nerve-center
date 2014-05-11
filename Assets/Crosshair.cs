using UnityEngine;
using System.Collections;

public class Crosshair : MonoBehaviour {


	public Texture2D mainTexture;
	Rect drawPosition;
	// Use this for initialization
	void Start () {
		drawPosition = new Rect((Screen.width - mainTexture.width) / 2, (Screen.height - mainTexture.height) /2, mainTexture.width, mainTexture.height);
		Debug.Log (drawPosition);
	}

	void OnGUI() {
		GUI.DrawTexture(drawPosition, mainTexture);
	}

}
