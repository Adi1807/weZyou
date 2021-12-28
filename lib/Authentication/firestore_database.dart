import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference _users =
    FirebaseFirestore.instance.collection('users');

Future<void> addUser(String uid, String name, String category, String bio,
    String email, String country) async {
  _users.doc(uid).set({
    'Name': name,
    'Category': category,
    'Bio': bio,
    'email': email,
    'country': country,
  });
}
