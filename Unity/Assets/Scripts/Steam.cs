using UnityEngine;
using System.Collections;

public class Steam : MonoBehaviour {
	
	public readonly bool IsHorizontal = false;
	
	public void Toggle() {
		
		ParticleSystem particleSystem_ = particleSystem;
		
		if (particleSystem_ == null) {
			return;
		}

		if (particleSystem_.isPlaying) {
			particleSystem_.Stop();
		} else {
			particleSystem_.Play();
		}
	}
}
