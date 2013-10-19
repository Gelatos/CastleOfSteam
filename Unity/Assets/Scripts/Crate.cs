using UnityEngine;
using System.Collections;

public class Crate : MonoBehaviour {
	
	const float moveDistance = 3.473021f;
	const float moveDuration = 1f;
	
	[SerializeField] bool canBePushedByPlayer = true;
	[SerializeField] bool canBePushedBySteam = true;
	
	void OnCollisionEnter(Collision collision) {
		
		if (!canBePushedByPlayer ||
				collision.gameObject.tag != "Player") {
			return;
		}
		
		// TODO: Do we want to negate the relative velocity?
		Vector3 relativeVelocity = collision.relativeVelocity;
		float relativeVelocityX = relativeVelocity.x;
		float relativeVelocityZ = relativeVelocity.z;
		
		float deltaX;
		float deltaZ;
		if (Mathf.Abs(relativeVelocityX) > Mathf.Abs(relativeVelocityZ)) {
			deltaX = (relativeVelocityX > 0 ? moveDistance : -moveDistance);
			deltaZ = 0f;
		} else {
			deltaX = 0f;
			deltaZ = (relativeVelocityZ > 0 ? moveDistance : -moveDistance);
		}
		StartCoroutine(Move(new Vector3(deltaX, 0f, deltaZ)));
	}
	
	void OnParticleCollisionEnter(GameObject otherGameObject) {
		
		if (!canBePushedBySteam || otherGameObject.tag != "Steam") {
			return;
		}
		
		Steam steam = otherGameObject.GetComponent<Steam>();
		if (steam == null) {
			return;
		}
		
		float deltaX;
		float deltaZ;
		if (steam.IsHorizontal) {
			bool isRight = (transform.position.x -
					otherGameObject.transform.position.x > 0);
			deltaX = (isRight ? moveDistance : -moveDistance);
			deltaZ = 0f;
		} else {
			bool isFarther = (transform.position.z -
					otherGameObject.transform.position.z > 0);
			deltaX = 0f;
			deltaZ = (isFarther ? moveDistance : -moveDistance);
		}
		StartCoroutine(Move(new Vector3(deltaX, 0f, deltaZ)));
	}
	
	void OnCollisionExit(Collision collision) {
		if (collision.gameObject.tag == "Floor") {
			StartCoroutine(Move(new Vector3(0f, -moveDistance, 0f)));
		}
	}
	
	bool CanBePushedBy(GameObject otherGameObject) {
		string otherTag = otherGameObject.tag;
		return (otherTag == "Player" && canBePushedByPlayer) ||
				(otherTag == "Steam" && canBePushedBySteam);
	}
	
	IEnumerator Move(Vector3 deltaPosition) {
		float time = 0f;
		Transform _transform = transform;
		Vector3 from = _transform.position;
		Vector3 to = from + deltaPosition;
		while (time <= moveDuration) {
			time += Time.deltaTime;
			float t = Mathf.SmoothStep(0f, 1f, time / moveDuration);
			_transform.position = Vector3.Lerp(from, to, t);
			yield return null;
		}
	}
}
