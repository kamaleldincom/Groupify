import 'package:firebase_auth/firebase_auth.dart';
import 'package:groupify/models/User.dart' as u;
import 'package:groupify/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  u.User _userFormFirebaseUser(User user) {
    return user != null ? u.User(id: user.uid) : null;
  }

  Stream<u.User> get user {
    // return _auth.onAuthStateChanged.map((FirebaseUser user) => _userFormFirebaseUser(user)); //OR
    return _auth.authStateChanges().map((user) => _userFormFirebaseUser(user));
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      print(result.user);
      return _userFormFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign up
  Future registerUser(u.User user) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: user.email, password: user.password);
      User fireUser = result.user;

      print('fire uid:  ${fireUser.uid}');
      user.id = fireUser.uid;
      print('user uid:  ${user.id}');
      await DatabaseService().insertUser(user);
      return _userFormFirebaseUser(fireUser);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
