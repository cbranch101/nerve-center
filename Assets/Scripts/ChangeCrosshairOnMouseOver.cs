using UnityEngine;
using System.Collections;

public class ChangeCrosshairOnMouseOver : MonoBehaviour {


	public Texture mousedOverTexture;
	public Texture neutralTexture;
	private Crosshair crosshair;


	// Use this for initialization
	void Start () {
		DetectMouseOver.OnMouseOverEnter += setMouseOverTexture;
		DetectMouseOver.OnMouseOverExit += setNeutralTexture;
		crosshair = gameObject.GetComponent<Crosshair>();
		setNeutralTexture();
	}

	
	// Update is called once per frame
	void Update () {
	
	}

	void setMouseOverTexture() {
			crosshair.mainTexture = mousedOverTexture;
	}

	void setNeutralTexture() {
		crosshair.mainTexture = neutralTexture;
	}
}
