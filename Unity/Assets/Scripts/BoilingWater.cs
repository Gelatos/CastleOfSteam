using UnityEngine;
using System.Collections;

public class BoilingWater : MonoBehaviour {
	
	[SerializeField] AudioSource boilingToDeathAudioSource;
	
	bool isBoilingToDeath = false;
	
	void OnCollisionEnter(Collision collision) {
		if (collision.gameObject.tag == "Player") {
			if (!isBoilingToDeath) {
				isBoilingToDeath = true;
				StartCoroutine(BoilToDeath());
			}
		}
	}
	
	IEnumerator BoilToDeath() {
		
		if (boilingToDeathAudioSource != null) {
			boilingToDeathAudioSource.Play();
			while (boilingToDeathAudioSource.isPlaying) {
				yield return null;
			}
		}
		
		Player.Instance.ResetLevel();
	}
}
