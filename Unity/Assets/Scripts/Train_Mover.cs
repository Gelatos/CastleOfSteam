using UnityEngine;
using System.Collections;

public class Train_Mover : MonoBehaviour
{

	[SerializeField]
	private float speed = 1f ;
	[HideInInspector]
	public bool can_Move = true ;
	private bool is_Reverse ;
	private Vector3 originalPos ;


	// Use this for initialization
	void Start ()
	{
		can_Move = true;
		is_Reverse = false;

		originalPos = transform.position;
	}

	private Vector3 _movement ;

	// Update is called once per frame
	void Update ()
	{
		if (!can_Move)
			return ;

		_movement = transform.localPosition + transform.forward * speed;
		transform.localPosition = _movement;

	
	}

	public void OnTriggerEnter ()
	{
		Repeat ();
		Debug.Log ("trigger entered");
	}

	public void Repeat ()
	{
		transform.position = originalPos;
	}

	public void Reverse ()
	{
		is_Reverse = !is_Reverse;
	}
}
