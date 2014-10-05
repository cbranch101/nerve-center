using UnityEngine;
using System.Collections;

public class IncreasePotentiometerLevelOnGuess : MonoBehaviour {

	private PoteniometerLevel level;

	// Use this for initialization
	void Start () {
		level = GameObject.Find ("GeoSphere401").GetComponent<PoteniometerLevel>();
		PostGuesser.OnPostGuess += onGuess;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void onGuess(bool isCorrect) {
		if(isCorrect) {
			level.increaseByOne();
		}  else {
			level.setLightLevel(0f);
		}
	} 
}
