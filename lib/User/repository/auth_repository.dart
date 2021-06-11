import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_flutter_application_1/User/repository/firebase_auth_api.dart';

class AuthRepository {
  final _FirebaseAuthAPI = FirebaseAuthAPI();

  Future<FirebaseUser> signInFirebase() => _FirebaseAuthAPI.signIn();
  signOut() => _FirebaseAuthAPI.singOut();
}
