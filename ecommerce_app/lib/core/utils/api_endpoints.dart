import 'package:firebase_auth/firebase_auth.dart';

class ApiEndpoints {
  static String userUid() {
    var user = FirebaseAuth.instance.currentUser;
    return user!.uid;
  }

  static String users(String uid) => "users/$uid";
  static String products(String id) => "products/$id";
  static String getProducts() => "products";
  static String addToFavorites(String productId) =>
      "users/${userUid()}/favorites/$productId";

  static String getFavorites() => "users/${userUid()}/favorites";
}
