using UnityEngine;
using System.Collections;

public class Valve : InteractableObject {
	
	[SerializeField] Steam steam;
	
	public override void Interact() {
		base.Interact();
		
		if (steam != null) {
			steam.Toggle();
		}
	}
}
