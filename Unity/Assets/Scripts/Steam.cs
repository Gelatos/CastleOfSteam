using UnityEngine;
using System.Collections;

[RequireComponent (typeof(Collider))]
[RequireComponent (typeof(ParticleSystem))]
public class Steam : MonoBehaviour {
	
	void Awake() {
		particleSystem.enableEmission = collider.enabled = false;
	}
	
	public void Toggle() {
		particleSystem.enableEmission = collider.enabled =
				!collider.enabled;
	}
}
