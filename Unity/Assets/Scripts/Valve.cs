using UnityEngine;
using System.Collections;

public class Valve : InteractableObject
{
	
	[SerializeField]
	Steam steam;
	private bool turning = false;
	[SerializeField]
	private Transform valveTransform;
	
	public override void Interact ()
	{
		if (turning) {
			return;
		}
		base.Interact ();
		
		StartCoroutine (TurnValve ());
	}
	
	private IEnumerator TurnValve ()
	{
		turning = true;
		
		float timer = 0.0F;
		while (timer < 360.0F) {
			timer += Time.deltaTime * 360.0F;
			valveTransform.localEulerAngles = Vector3.up * timer;
			yield return null;
		}
		
		if (steam != null) {
			steam.Toggle ();
		}
		
		turning = false;
	}
}
