using UnityEngine;
using System.Collections;

public class PoteniometerLevel : MonoBehaviour {


	private float currentLevel = 0f;
	private Material levelMaterial;
	// Use this for initialization
	void Start () {
		levelMaterial = gameObject.renderer.materials[0];
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void increaseByOne() {
		float newLevel = currentLevel + 1.0f;
		setLightLevel(newLevel);
	}

	public void setLightLevel(float levelToSet) {
		levelMaterial.SetFloat("_node_106", levelToSet);
		currentLevel = levelToSet;
	}

}
