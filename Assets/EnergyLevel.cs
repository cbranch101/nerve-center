using UnityEngine;
using System.Collections;

public class EnergyLevel : MonoBehaviour {

	public PoteniometerLevel[] subLevels;
	public LevelChanger[] levelDependentComponents;
	private float currentLevel = 0f;
	// Use this for initialization
	void Start () {
		setEvents();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void setEvents() {
		foreach(PoteniometerLevel subLevel in subLevels) {
			subLevel.OnLevelChange += setCurrentLevel;
		}
	}


	void setCurrentLevel() {
		currentLevel = 0f;
		foreach(PoteniometerLevel subLevel in subLevels) {
			currentLevel += subLevel.getLevel();
		}
		updateLevelDependentComponents();
	}

	void updateLevelDependentComponents() {
		foreach(LevelChanger component in levelDependentComponents) {
			component.handleLevelChange(currentLevel);
		}
	}

}

public interface IPowerable
{
	void TurnOn();
	void TurnOff();
	bool IsOn();
}

