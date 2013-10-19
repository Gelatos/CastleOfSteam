using UnityEngine;
using System.Collections;

public class Crate : MonoBehaviour {
	
	const float moveDistance = 6.946041f;
	const float moveDuration = 1f;
	
	[SerializeField] bool canBePushedByPlayer = true;
	[SerializeField] bool canBePushedBySteam = true;
	
	void OnCollisionEnter(Collision collision) {
		
		if (!CanBePushedBy(collision.gameObject)) {
			return;
		}
		
		// TODO: Do we want to negate the relative velocity?
		Vector3 relativeVelocity = collision.relativeVelocity;
		float relativeVelocityX = relativeVelocity.x;
		float relativeVelocityZ = relativeVelocity.z;
		
		float deltaX;
		float deltaZ;
		if (Mathf.Abs(relativeVelocityX) > Mathf.Abs(relativeVelocityZ)) {
			deltaZ = 0f;
			if (relativeVelocityX > 0) {
				// Move right.
				deltaX = moveDistance;
			} else {
				// Move left.
				deltaX = -moveDistance;
			}
		} else {
			deltaX = 0f;
			if (relativeVelocityZ > 0) {
				// Move farther.
				deltaZ = moveDistance;
			} else {
				// Move nearer.
				deltaZ = -moveDistance;
			}
		}
		StartCoroutine(Move(new Vector3(deltaX, 0f, deltaZ)));
	}
	
	void OnCollisionExit(Collision collision) {
		if (IsFloor(collision.gameObject)) {
			// Fall.
			StartCoroutine(Move(new Vector3(0f, -moveDistance, 0f)));
		}
	}
	
	bool CanBePushedBy(GameObject otherGameObject) {
		string otherTag = otherGameObject.tag;
		return (otherTag == "Player" && canBePushedByPlayer) ||
				(otherTag == "Steam" && canBePushedBySteam);
	}
	
	bool IsFloor(GameObject otherGameObject) {
		return otherGameObject.tag == "Floor";
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
