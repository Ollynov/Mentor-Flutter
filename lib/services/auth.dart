import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';


class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore db = Firestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<FirebaseUser> get getUser => _auth.currentUser();
  Stream<FirebaseUser> get getUserStream => _auth.onAuthStateChanged;
  
  // anonymous login
  Future<FirebaseUser> anonLogin() async {
    FirebaseUser user = await _auth.signInAnonymously();
    updateUserData(user);
    return user;
  }
  // google login
  Future<FirebaseUser> googleSignIn() async {
    try {

      // this first future redirects the user to google where they will either perform single or two factor authentication, once google is like "chill we know who this is yo" it gives them a redirect back to our app (original sign in page), where we now have some data from that person's google auth. At this point we have a username, and more credentials from the GOOG, and now we use that to sign them into our own platform. These credentials are secured and sent over to us in the form of an access token and an ID token. 
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication 


      // we will now run auth.signinwithcredential since we have the 2 tokens from google that we will be using to sign in to our own provisioned firebase db

    } catch (err) {

    }
  }

}