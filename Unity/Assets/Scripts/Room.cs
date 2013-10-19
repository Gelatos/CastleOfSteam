using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Room : MonoBehaviour
{
	#region Instance
	
	private static Room instance;

	public static Room Instance {
		get {
			if (instance != null) {
				return instance;
			}
			
			return null;
		}
	}
	
	#endregion
	
	#region Global Variables
	
	[SerializeField]
	private string[] locations;
	[SerializeField]
	private Transform[] playerStartLocations;
	[SerializeField]
	private Transform defaultPosition;
	private Dictionary <string, Transform> locationDictionary = new Dictionary<string, Transform> ();
	
	#endregion
	
	#region Getters and Setters

	public Dictionary<string, Transform> LocationDictionary {
		get {
			return this.locationDictionary;
		}
		set {
			locationDictionary = value;
		}
	}
	
	public Transform DefaultPosition {
		get {
			return this.defaultPosition;
		}
		set {
			defaultPosition = value;
		}
	}
	
	#endregion
	
	#region Unity Functions
	
	private void Awake ()
	{
		// setup the instance
		if (instance != null) {
			Destroy (instance);
		}
		instance = this;
		
		// setup the dictionary
		for (int i = 0; i < locations.Length; i++) {
			locationDictionary.Add (locations [i], playerStartLocations [i]);
		}
	}
	
	#endregion
}
