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
		Debug.Log ("Door:OnTriggerEnter");
		if (other.tag == "Player") {
			if (keyName != "") {
			Player.Instance.LoadLevel (roomName, keyName);
			} else {
			Player.Instance.LoadLevel (roomName);
			}
		}
	}
	
	#endregion
}
