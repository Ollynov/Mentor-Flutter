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
  
  Future<FirebaseUser> anonLogin() async {
    FirebaseUser user = await _auth.signInAnonymously();
    updateUserData(user);
    return user;
  }

}