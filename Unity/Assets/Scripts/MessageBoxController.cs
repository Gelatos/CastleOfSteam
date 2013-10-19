using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MessageBoxController : MonoBehaviour
{
	#region Global Variables
	
	// GUI
	[SerializeField]
	protected UILabel textLabel;
	
	// Transform
	[SerializeField]
	protected Transform spriteBackground;
	
	// scroll speed determines the delay in seconds to display the next word
	[SerializeField]
	protected float scrollDelay = 0.03F;
	protected bool endScroll;
	protected bool textboxHidden;
	
	#endregion
	
	#region Getters and Setters
	
	public float ScrollSpeed {
		get {
			return this.scrollDelay;
		}
		set {
			scrollDelay = value;
		}
	}
	
	public bool EndScroll {
		set {
			endScroll = value;
		}
	}
	
	public bool HideTextBox {
		get {
			return textboxHidden;
		}
		set {
			textboxHidden = value;
		}
	}

	public UILabel TextLabel {
		get {
			return this.textLabel;
		}
		set {
			textLabel = value;
		}
	}	
	#endregion
	
	#region Unity Functions
	
	protected virtual void Start ()
	{
		// move the textbox off screen
		textLabel.lineWidth = (int)(Screen.width * 0.85f);
		transform.localPosition = Vector3.left * spriteBackground.localScale.x;
	}
	
	#endregion
	
	#region Text Parsing Functions
	
	/// <summary>
	/// Creates a word array by parsing it with the delimiters selected.
	/// </summary>
	/// <returns>The created word array.</returns>
	/// <param name='text'>Text to be parsed.</param>
	protected List<string[]> CreateWordArray (string text)
	{
		// create the list
		List<string[]> output = new List<string[]> ();
		string[] innerString;
		innerString = text.Split ('\n');
		output.Add (innerString);
		return output;
	}
	
	#endregion
	
	#region Update Text Functions
	
	public void SetText (string text)
	{
		StopAllCoroutines ();
		StartCoroutine (PlayText (text));
	}
	
	public void ClearText ()
	{
		textLabel.text = "";
	}
	
	public IEnumerator PlayText (string text)
	{
		// create the word array
		List<string[]> wordArray = CreateWordArray (text);
		
		// clear the text from the textLabel
		textLabel.text = "";
		endScroll = false;
		
		// wait for the textbox to be shown
		while (textboxHidden) {
			yield return null;
		}
		
		// This records the words on the current line so that the program knows when it should drop a line to the next line.
		// Ngui has this feature built in, however because we're printing letters one by one it will print as many letters as possible on
		// a line then drop it to the next line once the word fills the line. This looks terrible so we must drop the line programmatically.
		string currentLine = "";
		
		// first loop through the lists for each of the delays
		for (int j = 0; j <wordArray.Count; j++) {
			for (int i = 0; i < wordArray[j].Length; i++) {
				
				// create an array containing each word in the message.
				string[] words;
				words = wordArray [j] [i].Split (' ');
				currentLine = "";
				for (int k = 0; k < words.Length; k++) {
					if (words [k].Length > 0) {
						string firstLetter = words [k].Substring (0, 1);
						string lastLetter = words [k].Substring (words [k].Length - 1, 1);
						if (firstLetter != "[" && lastLetter != "[") {
							// determine if adding the word will spill the word over to the next line
							currentLine += words [k] + "  ";
							float textwidth = Vector3.Scale (textLabel.font.CalculatePrintedSize (currentLine, false, UIFont.SymbolStyle.None), textLabel.transform.localScale).x;
							if (textwidth > textLabel.lineWidth) {
								// the word spills over so we will put it on a new line and start a new currentLine
								textLabel.text += "\n";
								currentLine = words [k] + "  ";
							}
					
							// add letters one by one
							while (words[k] != "") {
								// display the next word in the word array
								textLabel.text += words [k].Substring (0, 1);
								words [k] = words [k].Substring (1);
					
								// create a delay before displaying the next word
								if (!endScroll) {
									yield return new WaitForSeconds (scrollDelay);
								}
							}
					
							// add a space after the word has finished printing
							textLabel.text += "  ";
						} else {
							textLabel.text += words [k];
						}
					}
				}
				
				// move to the next line
				if (i != (wordArray [j].Length - 1)) {
					textLabel.text += "\n";
				}
			}
			
			// this creates a pause at every delay call
			if (!endScroll) {
				yield return new WaitForSeconds (scrollDelay * 3.0F);
			}
		}
	}
	
	#endregion
	
	#region Textbox Animation Functions
	
	public virtual void Hide ()
	{ 
		textboxHidden = true;
		ClearText ();
		StartCoroutine (AnimateHide ());
	}
	
	public virtual IEnumerator AnimateHide ()
	{
		// fade out the text box
		float timer = 0.0F;
		TweenAlpha.Begin (spriteBackground.gameObject, 0.25F, 0.0F);
		TweenAlpha.Begin (textLabel.gameObject, 0.25F, 0.0F);
		yield return new WaitForSeconds (0.3F);
	}
	
	public virtual void Show ()
	{
		StartCoroutine (AnimateShow ());
	}
	
	public virtual IEnumerator AnimateShow ()
	{
		// fade in the textbox while moving on screen
		TweenAlpha.Begin (spriteBackground.gameObject, 0.0F, 1.0F);
		TweenAlpha.Begin (textLabel.gameObject, 0.35F, 1.0F);
		yield return new WaitForSeconds (0.35F);
		
		textboxHidden = false;
	}
	
	#endregion
}