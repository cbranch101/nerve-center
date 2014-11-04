using UnityEngine;
using System.Collections;

public class IncreasePotentiometerLevelOnGuess : MonoBehaviour {

	public PoteniometerLevel level;
	public PostGuesser postGuesser;

	// Use this for initialization
	void Start () {
		postGuesser.OnPostGuess += onGuess;
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
