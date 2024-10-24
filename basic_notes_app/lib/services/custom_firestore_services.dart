import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class CustomFirestoreServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addNote({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      await firestore.collection(path).add(data);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> deleteNote({required String path}) async {
    try {
      await firestore.doc(path).delete();
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> getNotes({required String path}) async {
    try {
      final snapshot = await firestore.collection(path).get();
      return snapshot.docs.map((e) => e.data()).toList();
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
