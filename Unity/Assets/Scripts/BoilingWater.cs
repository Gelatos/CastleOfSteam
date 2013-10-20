using UnityEngine;
using System.Collections;

public class BoilingWater : MonoBehaviour
{
	
	[SerializeField]
	AudioSource boilingToDeathAudioSource;
	bool isBoilingToDeath = false;
	
	void OnTriggerEnter (Collider other)
	{
		if (other.gameObject.tag == "Player") {
			if (!isBoilingToDeath) {
				isBoilingToDeath = true;
				StartCoroutine (BoilToDeath ());
			}
		}
	}
	
	IEnumerator BoilToDeath ()
	{
		
		if (boilingToDeathAudioSource != null) {
			boilingToDeathAudioSource.Play ();
			while (boilingToDeathAudioSource.isPlaying) {
				yield return null;
			}
		}
		
		Player.Instance.Death ();
	}
}
