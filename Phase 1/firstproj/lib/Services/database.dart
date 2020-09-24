import 'package:cloud_firestore/cloud_firestore.dart';
import '../Models/user.dart';

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> createNewUser(UserModel user) async {
    try {
      await _firestore.collection('users').doc(user.id).set({
        'name': user.name,
        'email': user.email,
      });
      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }

  Future<UserModel> getUser(String uid) async {
    try {
      DocumentSnapshot _doc =
          await _firestore.collection('users').doc(uid).get();

      return UserModel.fromDocumentSnapshot(_doc);
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
