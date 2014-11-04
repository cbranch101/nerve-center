using UnityEngine;
using System.Collections;

public class PostDataText : MonoBehaviour {
	
	public string postName = "none";
	public string textKey = "none";
	private CCText textMesh;
	// Use this for initialization
	void Start () {
		textMesh = GetComponent<CCText>();

	}
	
	public void updateText(Hashtable postData) {
		Hashtable post = (Hashtable)postData[postName];
		string postText = (string)post[textKey];
		StartCoroutine("TypeOutText", postText);
	}

	IEnumerator TypeOutText(string text) {
		textMesh.Text = "";
		int charCount = 0;
		foreach(char character in text) {
			charCount++;
			textMesh.Text = textMesh.Text + character;
			if(charCount == 3) {
				charCount = 0;
				yield return new WaitForSeconds(.001f);
			}
		}

	}


	
	
}

