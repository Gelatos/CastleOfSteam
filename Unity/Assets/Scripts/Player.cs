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
	
	// Transforms
	[SerializeField]
	private Transform playerTransform;
	
	// UI
	[SerializeField]
	private UISprite fullScreenFadeSprite;
	
	// booleans
	private bool fadingScreen;
	
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
	
	#endregion
	
	#region Unity Functions
	
	// Use this for initialization
	private void Awake ()
	{
		DontDestroyOnLoad (this);
		
		// set up the instance
		if (instance != null) {
			Destroy (this);
			return;
		} 
		instance = this;
	}
	
	private void OnLevelWasLoaded (int level)
	{
		// place the player at the start location
		if (Room.Instance.LocationDictionary.ContainsKey (previousScene)) {
			playerTransform.position = Room.Instance.LocationDictionary [previousScene].position;
		} else {
			playerTransform.position = Room.Instance.DefaultPosition.position;
		}
		StartCoroutine (FadeInScreen (Color.black, 1.0F));
	}
	
	#endregion
	
	#region Scene Loading Functions
	
	public void ResetLevel ()
	{
		StartCoroutine (FadeOutScreen (Color.black, 1.0F));
		Application.LoadLevel (currentScene);
	}
	
	public void LoadLevel (string sceneName)
	{
		// set up the previous scene and current scene
		previousScene = currentScene;
		currentScene = sceneName;
		
		// load the new level
		StartCoroutine (FadeOutScreen (Color.white, 1.0F));
		Application.LoadLevel (currentScene);
	}
	
	#endregion
	
	#region Fade Screen Animations
	
	private IEnumerator FadeInScreen (Color color, float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		while (fadingScreen) {
			yield return null;
		}
		fadingScreen = true;
		
		// set the color
		fullScreenFadeSprite.color = color;
		yield return StartCoroutine (FadeInScreen (speed));
	}
	
	private IEnumerator FadeInScreen (float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		while (fadingScreen) {
			yield return null;
		}
		fadingScreen = true;
		
		// fade in the sprite
		float timer = 0.0F;
		while (timer < 1.0F) { 
			timer += Time.deltaTime / speed;
			fullScreenFadeSprite.alpha = 1.0F - timer;
			yield return null;
		}
		fadingScreen = false;
	}
	
	private IEnumerator FadeOutScreen (Color color, float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		while (fadingScreen) {
			yield return null;
		}
		fadingScreen = true;
		
		// set the color
		fullScreenFadeSprite.color = color;
		yield return StartCoroutine (FadeInScreen (speed));
	}
	
	private IEnumerator FadeOutScreen (float speed = 1.0F)
	{
		// prevent auto fade out when fading in the screen
		while (fadingScreen) {
			yield return null;
		}
		fadingScreen = true;
		
		// fade out the sprite
		float timer = 0.0F;
		while (timer < 1.0F) { 
			timer += Time.deltaTime / speed;
			fullScreenFadeSprite.alpha = timer;
			yield return null;
		}
		fadingScreen = false;
	}
	
	#endregion
}
