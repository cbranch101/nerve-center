using UnityEngine;
using System.Collections;

public class PoteniometerLevel : MonoBehaviour, IPowerable {


	private float currentLevel = 0f;
	private Material levelMaterial;
	// Use this for initialization
	void Start () {
		levelMaterial = gameObject.renderer.materials[0];
		levelMaterial.SetFloat("_BulbBrightness", 0f);

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void increaseByOne() {
		float newLevel = currentLevel + 1.0f;
		setLightLevel(newLevel);
	}

	public void OnPowerUp() {
		levelMaterial.SetFloat("_BulbBrightness", 2f);
	}

	public void OnPowerDown() {
		levelMaterial.SetFloat("_BulbBrightness", 0f);
	}

	public void setLightLevel(float levelToSet) {
		levelMaterial.SetFloat("_node_106", levelToSet);
		currentLevel = levelToSet;
	}



}
