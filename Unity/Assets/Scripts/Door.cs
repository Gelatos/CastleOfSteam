using UnityEngine;
using System.Collections;

public class Door : MonoBehaviour
{
	#region Global Variables
	
	[SerializeField]
	private string roomName;
	[SerializeField]
	private string keyName;
	
	#endregion
	
	#region Unity Functions
	
	private void OnTriggerEnter (Collider other)
	{
		if (other.tag == "Player") {
			Player.Instance.LoadLevel (roomName, keyName);
		}
	}
	
	#endregion
}
