import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth _auth  = FirebaseAuth.instance;

  Future<void>  registerwithEmailandPassword(
      String email,String password
      ) async {
     final user= await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void>  signInWithEmailandPassword(
      String email,String password
      ) async {
    final user= await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }


}