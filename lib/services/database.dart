import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groupify/models/User.dart';

class DatabaseService {
  // String uid;
  DatabaseService();
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future insertUser(User user) async {
    print("user ID " + user.id);
    await usersCollection.doc(user.id).set(user.toMap());
  }

  Future updateUser(String name, String id) async {
    await usersCollection.doc(id).update({'name': name});
  }

  Future<User> getUser(String id) async {
    return await usersCollection.doc(id).get().then((doc) => User.fromMap(doc));
  }
}
