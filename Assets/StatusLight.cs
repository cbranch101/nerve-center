using UnityEngine;
using System.Collections;

public class StatusLight : MonoBehaviour, IPowerable {

	private Material offMaterial;
	private Color offColor;
	private Color onColor;
	private Material onMaterial;
	// Use this for initialization
	void Start () {
		setMaterials();
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

	public void OnPowerUp() {
		offMaterial.color = offColor;
	}

	public void OnPowerDown() {
		offMaterial.color = Color.black;
	}
}
