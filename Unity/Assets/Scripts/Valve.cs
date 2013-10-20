using UnityEngine;
using System.Collections;

public class Valve : InteractableObject
{
	
	[SerializeField]
	Steam steam;
	private bool turning;
	
	public override void Interact ()
	{
		if (turning) {
			return;
		}
		base.Interact ();
		
		if (steam != null) {
			steam.Toggle ();
		}
	}
	
	private IEnumerator TurnValve ()
	{
		turning = true;
		
		float timer = 0.0F;
		while (timer < 360.0F) {
			timer += Time.deltaTime * 360;
			transform.localEulerAngles = Vector3.Lerp (Vector3.zero, Vector3.forward * 360, timer);
			yield return null;
		}
		
		if (steam != null) {
			steam.Toggle ();
		}
		
		turning = false;
	}
}
