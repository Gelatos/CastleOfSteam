using UnityEngine;
using System.Collections;

public abstract class InteractableObject : MonoBehaviour
{
	#region Global Variables
	
	public string interactMessage;
	
	#endregion
	
	#region Interaction
	
	public abstract void Interact ();

	#endregion
}
