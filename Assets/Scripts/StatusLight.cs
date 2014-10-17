using UnityEngine;
using System.Collections;

public class StatusLight : MonoBehaviour{

	private Material offMaterial;
	private Color offColor;
	private Color onColor;
	private Material onMaterial;
	private bool powered = false;

	// Use this for initialization
	void Awake() {
		setMaterials();
	}


	void Start () {

	}

	void setMaterials (){
		foreach(Transform child in transform) {
			if(child.gameObject.name == "Off") {
				offMaterial = child.gameObject.renderer.material;
				offColor = offMaterial.color;
				offMaterial.color = Color.black;
			}
			if(child.gameObject.name == "On") {
				onMaterial = child.gameObject.renderer.material;
				onColor = onMaterial.color;
				onMaterial.color = Color.black;
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void setStandby() {
		if(offMaterial == null) {
			Debug.Log (gameObject.name);
		}

		offMaterial.color = offColor;
		onMaterial.color = Color.black;
	}

	public void setFullyOff() {
		offMaterial.color = Color.black;
		onMaterial.color = Color.black;
	}

	
	public void setActive() {
		offMaterial.color = Color.black;
		onMaterial.color = onColor;
	}	
}
