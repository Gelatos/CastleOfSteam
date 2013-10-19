﻿using UnityEngine;
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
	private bool hoveringUp;
	private float translationTimer;
	
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
	}
	
	private void Update ()
	{
//		if (growing) {
//			timer += Time.deltaTime;
//		}
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
		
		StartCoroutine (MoveTowardsPlayer ());
	}
	
	private IEnumerator MoveTowardsPlayer ()
	{
		// restrict movement
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
		Destroy (gameObject);
	}
	
	#endregion
}
