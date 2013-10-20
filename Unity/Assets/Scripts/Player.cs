using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour
{
	#region Instance
	
	private static Player instance;

	public static Player Instance {
		get {
			if (instance != null) {
				return instance;
			}
			
			return null;
		}
	}
	
	#endregion
	
	#region Global Variables
	
	// scene holders
	private string previousScene;
	private string currentScene;

	[SerializeField]
	private bool is_VR = false ;
	[SerializeField]
	private GameObject _regularCamera ;
	[SerializeField]
	private GameObject _vrCamera ;
	
	[SerializeField]
	private AudioSource creakingDoorAudioSource;

	// Transforms
	[SerializeField]
	private Transform playerTransform;
	
	// UI
	[SerializeField]
	private UISprite fullScreenFadeSprite;
	[SerializeField]
	private MessageBoxController messageController;
	
	// booleans
	private bool fadingOutScreen;
	private bool fadingInScreen;
	private bool playingMessage;
	
	// interaction
	[SerializeField]
	private UISprite interactionSprite;
	[SerializeField]
	private UILabel interactionLabel;
	private Ray interactionRay;
	private RaycastHit interactionHitRay;
	private Vector3 rayCastPosition;
	
	// movement
	[SerializeField]
	private CharacterMotor characterMotor;
	
	#endregion
	
	#region Getters and Setters

	public string CurrentScene {
		get {
			return this.currentScene;
		}
	}

	public string PreviousScene {
		get {
			return this.previousScene;
		}
	}

	public Transform PlayerTransform {
		get {
			return this.playerTransform;
		}
		set {
			playerTransform = value;
		}
	}
	
	#endregion
	
	#region Unity Functions
	
	// Use this for initialization
	private void Awake ()
	{
		// set up the instance
		if (instance != null && instance != this) {
			Destroy (gameObject);
			return;
		} 
		instance = this;
		DontDestroyOnLoad (this);

		_vrCamera.SetActive( is_VR ) ;
		_regularCamera.SetActive( !is_VR ) ;

		// get the raycast position
		rayCastPosition = new Vector3 (Camera.main.pixelWidth / 2, Camera.main.pixelHeight / 2, 0);
		
		// starting the game
		previousScene = "Courtyard";
		currentScene = "Courtyard";
		ResetGame ();
	}
	
	private void Update ()
	{
		interactionRay = Camera.main.ScreenPointToRay (rayCastPosition);
		
		// see if the object the user touched is from the touchable object layer
		if (Physics.Raycast (interactionRay, out interactionHitRay, 5.0F, 1 << 9)) {
			InteractableObject target = interactionHitRay.collider.GetComponent <InteractableObject> ();
			if (target != null) {
				// determine
				if (Input.GetKeyDown (KeyCode.F)) {
					Debug.Log ("interacting");
					Interact (target);
				}
				SetInteraction (target.interactMessage);
				return;
			} 
		}
		RemoveInteraction ();
		
		if (Input.GetKeyDown (KeyCode.R)) {
			StartCoroutine (ResetLevel ());
		}
	}
	
	private void OnLevelWasLoaded (int level)
	{
		// set up the instance
		if (instance != null && instance != this) {
			Destroy (gameObject);
			return;
		} 
		
		// place the player at the start location
		Debug.Log ("prev: " + previousScene);
		if (Room.Instance.LocationDictionary.ContainsKey (previousScene)) {
			playerTransform.position = Room.Instance.LocationDictionary [previousScene].position;
		} else {
			playerTransform.position = Room.Instance.DefaultPosition.position;
		}
		StartCoroutine (FadeInScreen (Color.black, 1.0F));
	}
	
	#endregion
	
	#region Scene Loading Functions
	
	public IEnumerator ResetLevel ()
	{
		yield return StartCoroutine (WaitForFadeThenLoad (currentScene));
	}
	
	public void LoadLevel (string sceneName)
	{
		// set up the previous scene and current scene
		previousScene = currentScene;
		currentScene = sceneName;
		
		// load the new level
		StartCoroutine (WaitForFadeThenLoad (currentScene));
	}
	
	public void LoadLevel (string sceneName, string keyName)
	{
		if (CheckKey (keyName)) {
			LoadLevel (sceneName);
		} else {
			PlayMessage ("You do not have a key for this room");
		}
	}
	
	private IEnumerator WaitForFadeThenLoad (string sceneName)
	{
		yield return StartCoroutine (FadeOutScreen (Color.black, 0.1F));
		Application.LoadLevel (sceneName);
	}
	
	#endregion
	
	#region Game Save Handling Functions
	
	private void ResetGame ()
	{
		PlayerPrefs.DeleteAll ();
	}
	
	public bool CheckKey (string keyName)
	{
		if (PlayerPrefs.GetInt (keyName, 0) != 0) {
			return true;
		}
		return false;
	}
	
	public void SaveKey (string keyName)
	{
		PlayerPrefs.SetInt (keyName, 1);
		PlayerPrefs.Save ();
	}
	
	#endregion
	
	#region Fade Screen Animations
	
	private IEnumerator FadeInScreen (Color color, float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		if (fadingInScreen) {
			yield break;
		}
		while (fadingOutScreen) {
			yield return null;
		}
		
		// set the color
		fullScreenFadeSprite.color = color;
		yield return StartCoroutine (FadeInScreen (speed));
	}
	
	private IEnumerator FadeInScreen (float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		if (fadingInScreen) {
			yield break;
		}
		while (fadingOutScreen) {
			yield return null;
		}
		fadingInScreen = true;
		
		// fade in the sprite
		float timer = 0.0F;
		while (timer < 1.0F) { 
			timer += Time.deltaTime / speed;
			fullScreenFadeSprite.alpha = 1.0F - timer;
			yield return null;
		}
		fadingInScreen = false;
	}
	
	private IEnumerator FadeOutScreen (Color color, float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		if (fadingOutScreen) {
			yield break;
		}
		
		if (creakingDoorAudioSource != null) {
			creakingDoorAudioSource.Play();
		}
			
		// set the color
		fullScreenFadeSprite.color = color;
		yield return StartCoroutine (FadeOutScreen (speed));
	}
	
	private IEnumerator FadeOutScreen (float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		if (fadingOutScreen) {
			yield break;
		}
		fadingOutScreen = true;
		
		// fade out the sprite
		float timer = 0.0F;
		while (timer < 1.0F) { 
			timer += Time.deltaTime / speed;
			fullScreenFadeSprite.alpha = timer;
			yield return null;
		}
		fullScreenFadeSprite.alpha = 1.0F;
		fadingOutScreen = false;
	}
	
	#endregion
	
	#region Message Box Functions
	
	public void PlayMessage (string message)
	{
		if (playingMessage) {
			return;
		}
		playingMessage = true;
		messageController.Show ();
		StartCoroutine (AnimateMessage (message));
	}
	
	private IEnumerator AnimateMessage (string message)
	{
		yield return StartCoroutine (messageController.PlayText (message));
		yield return new WaitForSeconds (2.0F);
		yield return StartCoroutine (messageController.AnimateHide ());
		playingMessage = false;
	}
	
	#endregion
	
	#region Interaction Functions
	
	private void SetInteraction (string message)
	{
		interactionSprite.color = new Color (186F / 255F, 134F / 255F, 77F / 255F, 1.0F);
		interactionLabel.text = message;

	}
	
	private void RemoveInteraction ()
	{
		interactionSprite.color = Color.white;
		interactionLabel.text = "";
	}
	
	private void Interact (InteractableObject target)
	{
		target.Interact ();
	}
	
	#endregion
	
	#region Movement Functions
	
	public void EnableMovement (bool enable)
	{
		characterMotor.canControl = enable;
	}
	
	#endregion
	
	#region Death Handling
	
	public void Death ()
	{
		StartCoroutine (DeathAnimation ());
	}
	
	private IEnumerator DeathAnimation ()
	{
		yield return StartCoroutine (FadeOutScreen (Color.black, 0.5F));
		playingMessage = true;
		messageController.Show ();
		yield return StartCoroutine (AnimateMessage ("You Died"));
		Application.LoadLevel (currentScene);
	}
	
	#endregion
}
