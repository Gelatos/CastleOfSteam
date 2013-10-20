using UnityEngine;
using System.Collections;

public class Key : InteractableObject
{
	#region Global Variables
	
	[SerializeField]
	private string keyName;
	
	// Transforms
	[SerializeField]
	private Transform keyTransform;
	[SerializeField]
	private Transform lightTransform;
	
	// animation variables
	private Vector3 translationModifier;
	private bool allowSpin;
	
	// interaction handling
	private bool isInteracted = false;
	
	#endregion
	
	#region Unity Functions
	
	private void Start ()
	{
		// if the key was already taken, remove it from the area
		if (Player.Instance.CheckKey (keyName)) {
			Destroy (gameObject);
		}
		allowSpin = true;
	}
	
	private void Update ()
	{
		if (allowSpin) {
			keyTransform.localEulerAngles += Vector3.up * Time.deltaTime * 10;
		}
	}
	
	#endregion
	
	#region Interact Functions
	
	public override void Interact ()
	{
		// determine if the player already interacted with the key
		if (isInteracted) {
			return;
		}
		isInteracted = true;
		
		base.Interact();
		
		StartCoroutine (MoveTowardsPlayer ());
	}
	
	private IEnumerator MoveTowardsPlayer ()
	{
		// restrict movement
		allowSpin = false;
		Player.Instance.EnableMovement (false);
		
		Vector3 startPosition = keyTransform.position;
		Vector3 endPosition = Player.Instance.PlayerTransform.position;
		
		// move the key towards the player
		float timer = 0.0F;
		while (timer < 1.0F) {
			timer += Time.deltaTime / 2.0F;
			keyTransform.position = Vector3.Lerp (startPosition, endPosition, timer);
			yield return null;
		}
		
		Player.Instance.EnableMovement (true);
		Player.Instance.SaveKey (keyName);
		Player.Instance.PlayMessage ("You found a key!");
		
		while (interactAudioSource.isPlaying) {
			yield return null;
		}
		
		Destroy (gameObject);
	}
	
	#endregion
}
