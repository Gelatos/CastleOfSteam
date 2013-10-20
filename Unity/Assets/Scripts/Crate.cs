using UnityEngine;
using System.Collections;

public class Crate : MonoBehaviour {
	
	const float moveDistance = 3.473021f;
	const float moveDuration = 1f;
	
	[SerializeField] bool canBePushedByPlayer = true;
	[SerializeField] bool canBePushedBySteam = true;
	
	void OnCollisionEnter(Collision collision) {
		
		Debug.Log("Crate:OnCollisionEnter");
		
		StopAllCoroutines();
		
		if (!canBePushedByPlayer ||
				collision.gameObject.tag != "Player") {
			return;
		}
		
		Vector3 relativePosition = transform.position -
				collision.gameObject.transform.position;
		float relativePositionX = relativePosition.x;
		float relativePositionZ = relativePosition.z;
		
		Debug.Log(relativePositionX + ", " + relativePositionZ);
		
		float deltaX;
		float deltaZ;
		if (Mathf.Abs(relativePositionX) > Mathf.Abs(relativePositionZ)) {
			deltaX = (relativePositionX > 0 ? moveDistance : -moveDistance);
			deltaZ = 0f;
		} else {
			deltaX = 0f;
			deltaZ = (relativePositionZ > 0 ? moveDistance : -moveDistance);
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
	
	bool CanBePushedBy(GameObject otherGameObject) {
		string otherTag = otherGameObject.tag;
		return (otherTag == "Player" && canBePushedByPlayer) ||
				(otherTag == "Steam" && canBePushedBySteam);
	}
	
	IEnumerator Move(Vector3 deltaPosition) {
		Debug.Log("Crate:Move");
		
		Rigidbody rigidbody_ = rigidbody;
		RaycastHit hitInfo;
		if (!rigidbody_.SweepTest(deltaPosition, out hitInfo)) {
			yield break;
		}
		
		float time = 0f;
		Transform transform_ = transform;
		Vector3 from = transform_.position;
		Vector3 to = from + deltaPosition;
		while (time <= moveDuration) {
			time += Time.deltaTime;
			float t = Mathf.SmoothStep(0f, 1f, time / moveDuration);
			rigidbody_.isKinematic = true;
			transform_.position = Vector3.Lerp(from, to, t);
			rigidbody_.isKinematic = false;
			yield return null;
		}
	}
}
