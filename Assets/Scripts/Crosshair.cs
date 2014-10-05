using UnityEngine;
using System.Collections;

public class Crosshair : MonoBehaviour {


	public Texture mainTexture;
	Rect drawPosition;
	private bool shown = true;
	// Use this for initialization
	void Start () {
		drawPosition = new Rect((Screen.width - mainTexture.width) / 2, (Screen.height - mainTexture.height) /2, mainTexture.width, mainTexture.height);
	}
	
	void OnGUI() {
		if(shown) {
			GUI.DrawTexture(drawPosition, mainTexture);
		}
	}

	public void show() {
		shown = true;
	}

	public void hide() {
		shown = false;
	}

}
