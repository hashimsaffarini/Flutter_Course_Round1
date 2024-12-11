import 'package:ecommerce_app/core/services/firestore_services.dart';
import 'package:ecommerce_app/core/utils/api_endpoints.dart';
import 'package:ecommerce_app/models/signup_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Auth {
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthImpl implements Auth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance; //Auth
  FirestoreService firestoreService = FirestoreService.instance;
  @override
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var signUpModel = SignupModel(
        email: email,
        name: name,
        uid: user.user!.uid,
      );
      await firestoreService.setData(
        path: ApiEndpoints.users(user.user!.uid),
        data: signUpModel.toMap(),
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

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw ('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw ('Wrong password provided for that user.');
      } else if (e.code == 'invalid-credential') {
        throw ('Email or password is invalid');
      } else {
        throw (e.toString());
      }
    } catch (e) {
      throw (e.toString());
    }
  }
}
