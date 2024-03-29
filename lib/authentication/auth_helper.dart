import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:freelance_fx_buyer/view/screens/bottom_navigation/bottom_navigation_screen.dart';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/user_model.dart';
import '../view/screens/onboard_screen/onboard_screen.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _DB = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<String> signUpUser({
    required String email,
    required String password,
    required String fullName,
    required String mobileNumber,
    required String image,
  }) async {
    String res = 'some error occured';
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          fullName.isNotEmpty ||
          mobileNumber.isNotEmpty) {
        final newUser = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        final user = UserModel(
            email: email,
            fullName: fullName,
            mobileNumber: mobileNumber,
            uid: newUser.user!.uid,
            image: image);
        await _DB.collection('users').doc(newUser.user!.uid).set(user.toJson());
        res = 'Sucess';
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'email-already-in-use') {
        res = 'The email address is already in use';
      }
    }
    print(res);
    return res;
  }

  Future<String> signInUser(
      {required String email, required String password}) async {
    String res = 'some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((value) {
          FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid);
        });
        res = 'Logged In Sucessfully';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-password') {
        res = 'Invalid  password';
      }
      if (e.code == 'user-not-found') {
        res = 'User not found';
      }
      if (e.code == 'invalid-email') {
        res = 'Inavlid Email';
      }
    }
    return res;
  }

  logoutUser() async {
    await _auth
        .signOut()
        .then((value) => Get.offAll(() => const OnBoardScreen()));
  }

  googleSignIn(BuildContext context) async {
    // var user = await _googleSignIn.signIn();
    // print(user);
    // if(user!.id.isNotEmpty){
    //   Get.to(BottomNavigationBuyer());
    // }
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
       
      // Getting users credential
      UserCredential result = await _auth.signInWithCredential(authCredential); 
      User? user = result.user;
       if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNavigationBuyer()));
      } 
  }
  }
}
