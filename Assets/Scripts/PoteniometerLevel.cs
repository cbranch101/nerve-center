using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PoteniometerLevel : MonoBehaviour {

	public delegate void ChangeAction();
	public event ChangeAction OnLevelChange;
	private Vector2[] powerLevelRanges;


	private int currentLevel = 0;
	private List<Material> levelMaterials;
	// Use this for initialization
	void Start () {
		setLevelMaterials();
		OnPowerDown();
		setPowerLevelRanges();
		InvokeRepeating("updatePowerBulbs", .1f, .15f);
	}

	void setPowerLevelRanges() {
		powerLevelRanges = new Vector2[2];
		Vector2 level1 = new Vector2(1f, 5f);
		Vector2 level2 = new Vector2(5f, 9f);
		powerLevelRanges[0] = level1;
		powerLevelRanges[1] = level2;
	}

	void updatePowerBulbs() {
		if(currentLevel > 0) {
			var levelRange = powerLevelRanges[currentLevel - 1];
			setLevelBasedOnRange(levelRange, "_BulbsIlluminated");
		}
	}

	public void setLevelBasedOnRange(Vector2 range, string floatName) {
		foreach(Material levelMaterial in levelMaterials) {
			float randomValue = Random.Range(range.x, range.y);
			levelMaterial.SetFloat (floatName, randomValue);
		}
	}



	public float getLevel() {
		return (float)currentLevel;
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
		int newLevel = currentLevel + 1;
		setLightLevel(newLevel);
	}

	public void OnPowerUp() {
		setFloatInLevelMaterials("_BulbBrightness", 2f);
	}

	public void OnPowerDown() {
		setFloatInLevelMaterials("_BulbBrightness", 0f);
		setFloatInLevelMaterials("_BulbsIlluminated", 0f);
	}

	public void setFloatInLevelMaterials(string floatName, float value) {
		foreach(Material levelMaterial in levelMaterials) {
			levelMaterial.SetFloat (floatName, value);
		}
	} 

	public void setLightLevel(int levelToSet) {
		if(levelToSet == 0) {
			setFloatInLevelMaterials("_BulbsIlluminated", 0f);
		}
		currentLevel = levelToSet;
		OnLevelChange();
	}



}
