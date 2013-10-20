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
		RenderSettings.fog = true;
    	RenderSettings.fogColor = new Color(0f, 0.4f, 0.7f, 0.6f);
    	RenderSettings.fogDensity = 0.04f;
		
		Player.Instance.EnableMovement (false);
		if (boilingToDeathAudioSource != null) {
			boilingToDeathAudioSource.Play ();
			while (boilingToDeathAudioSource.isPlaying) {
				yield return null;
			}
		}
		
		Player.Instance.Death ();
	}
}
