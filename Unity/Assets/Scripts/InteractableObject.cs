using UnityEngine;
using System.Collections;

public abstract class InteractableObject : MonoBehaviour {
	
	public string interactMessage;
	
	[SerializeField] AudioSource interactAudioSource;
	
	public virtual void Interact() {
		if (interactAudioSource != null) {
			interactAudioSource.Play();
		}
	}
}
