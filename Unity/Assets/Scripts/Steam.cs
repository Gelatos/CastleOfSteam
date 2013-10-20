using UnityEngine;
using System.Collections;

[RequireComponent (typeof(Collider))]
[RequireComponent (typeof(ParticleSystem))]
public class Steam : BoilingWater
{
	
	[SerializeField]
	float toggleColliderDelay = 0.1f;
	
	void Awake ()
	{
		particleSystem.enableEmission = collider.enabled = false;
	}
	
	public void Toggle ()
	{
		particleSystem.enableEmission = !particleSystem.enableEmission;
		StartCoroutine (ToggleCollider ());
	}
	
	IEnumerator ToggleCollider ()
	{
		yield return new WaitForSeconds(toggleColliderDelay);
		collider.enabled = !collider.enabled;
		
		// hack to refresh collision detection
		Transform transform_ = transform;
		transform_.position += Vector3.up;
		transform_.position -= Vector3.up;
	}
	
	
}
