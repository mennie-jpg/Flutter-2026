import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  User? getCurrentUser() =>  FirebaseAuth.instance.currentUser;

  Future<User?> register(String email, String password) async {

     final cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user;
    
  }

  Future<User?> login(String email, String password) async {
  
      final cred = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user;
   
  }

  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn.instance
        .authenticate();

    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> logout() async => await _auth.signOut();
  Future<void> googleDissconnect() async =>
      await GoogleSignIn.instance.disconnect();
}
