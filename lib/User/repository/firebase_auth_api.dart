import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<FirebaseUser> signIn() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    FirebaseUser user = (await _auth.signInWithCredential(
            GoogleAuthProvider.getCredential(
                idToken: gSA.idToken, accessToken: gSA.accessToken)))
        .user;

    return user;
  }

  singOut() async {
    await _auth.signOut().then((onValue) => print("Sesión cerrada"));
    _googleSignIn.signOut();
    print("Sesiones cerradas");
  }
}
