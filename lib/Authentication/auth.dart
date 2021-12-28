import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:we_z_you/Authentication/auth_exception_handler.dart';
import './firestore_database.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

User? _user;

firebaseUser() async* {
  yield _firebaseAuth.authStateChanges().listen((user) {
    if (user != null) {
      _user = user;
    }
  });
}

User? get getUser => _user;

//sign in with email and password
Future signInWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential = await _firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    throw Exception(AuthExceptionHandler.handleException(e));
  }
}

//register with email and password
Future<Either<bool, Exception>> registerWithEmailAndPassword(
    String email,
    String password,
    String name,
    String category,
    String bio,
    String country) async {
  try {
    UserCredential userCredential = await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);

    addUser(userCredential.user!.uid, name, category, bio,
        userCredential.user!.email!, country);
    return const Left(true);
  } catch (e) {
    throw Right(Exception(AuthExceptionHandler.handleException(e)));
  }
}

Future<void> signOut() async {
  await _firebaseAuth.signOut();
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
