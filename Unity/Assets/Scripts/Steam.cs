using UnityEngine;
using System.Collections;

[RequireComponent (typeof(Collider))]
[RequireComponent (typeof(ParticleSystem))]
public class Steam : MonoBehaviour {
	
	[SerializeField] float toggleColliderDelay = 0.5f;
	
	void Awake() {
		particleSystem.enableEmission = collider.enabled = false;
	}
	
	public void Toggle() {
		particleSystem.enableEmission = !particleSystem.enableEmission;
		StartCoroutine(ToggleCollider());
	}
	
	IEnumerator ToggleCollider() {
		yield return new WaitForSeconds(toggleColliderDelay);
		collider.enabled = !collider.enabled;
	}
}
