using UnityEngine;
using System.Collections;

public class Steam_Controller : MonoBehaviour {

	private enum Steam_Type{
		TYPE_SMALL ,
		TYPE_MEDIUM ,
		TYPE_LONG
	}

	[SerializeField] private Steam_Type SteamSize ;
	
	[SerializeField] private GameObject _pSmall ;
	[SerializeField] private GameObject _pMedium ;

	private ParticleSystem _p ;

	// Use this for initialization
	void Start () {

		switch( SteamSize ){
			case Steam_Type.TYPE_SMALL : Set_SmallSteam() ; break ;
			case Steam_Type.TYPE_MEDIUM : Set_MediumSteam() ; break ;
		default : Debug.LogError( "LOL, You fucker, you are doing it wrong" ) ; break ;
		}
	}

	private void Set_SmallSteam () {
		_pSmall.SetActive (true) ;
		_pMedium.SetActive (false) ;
		_p = _pSmall.GetComponent<ParticleSystem>() ;
		_p.enableEmission = false ;
	}
	private void Set_MediumSteam () {
		_pSmall.SetActive (false) ;
		_pMedium.SetActive (true);
		_p = _pMedium.GetComponent<ParticleSystem>() ;
		_p.enableEmission = false ;
	}


}
