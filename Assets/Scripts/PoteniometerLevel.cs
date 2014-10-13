﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PoteniometerLevel : MonoBehaviour, IPowerable {


	private float currentLevel = 0f;
	private List<Material> levelMaterials;
	// Use this for initialization
	void Start () {
		setLevelMaterials();
		OnPowerDown();
	}

	void setLevelMaterials() {
		levelMaterials = new List<Material>();
		foreach(Transform child in gameObject.transform) {
			Material levelMaterial = child.gameObject.renderer.material;
			if(levelMaterial != null) {
				levelMaterials.Add (levelMaterial);
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void increaseByOne() {
		float newLevel = currentLevel + 1.0f;
		setLightLevel(newLevel);
	}

	public void OnPowerUp() {
		setFloatInLevelMaterials("_BulbBrightness", 2f);
		increaseByOne();
	}

	public void OnPowerDown() {
		setFloatInLevelMaterials("_BulbBrightness", 0f);
	}

	public void setFloatInLevelMaterials(string floatName, float value) {
		foreach(Material levelMaterial in levelMaterials) {
			levelMaterial.SetFloat (floatName, value);
		}
	} 

	public void setLightLevel(float levelToSet) {
		setFloatInLevelMaterials("_BulbsIlluminated", levelToSet);
		currentLevel = levelToSet;
	}



}
