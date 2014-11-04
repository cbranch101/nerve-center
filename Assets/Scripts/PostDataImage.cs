using UnityEngine;
using System.Collections;

public class PostDataImage : MonoBehaviour {
	
	public Texture loadingTexture;
	public string postName = "none";
	public string imageKey = "none";
	// Use this for initialization
	void Start () {
		
	}

	// Update is called once per frame
	void Update () {
		
	}

	void setTexture(Texture textureToSet) {
		gameObject.renderer.materials[0].SetTexture("_ScreenImage", textureToSet);
	}

	public void onPostDataUpdateEnter() {
		setTexture (loadingTexture);
	}

	public void updateImage(Hashtable postData) {
		Hashtable post = (Hashtable)postData[postName];
		Texture postTexture = (Texture)post[imageKey];
		setTexture(postTexture);

	}


}
