import 'package:firebase_auth/firebase_auth.dart';

abstract class Auth {
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthImpl implements Auth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw ('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw ('The account already exists for that email.');
      }
    } catch (e) {
      throw (e.toString());
    }
  }
}
