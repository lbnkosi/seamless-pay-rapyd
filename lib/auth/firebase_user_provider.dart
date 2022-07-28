import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SeamlessPayFirebaseUser {
  SeamlessPayFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

SeamlessPayFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SeamlessPayFirebaseUser> seamlessPayFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SeamlessPayFirebaseUser>(
        (user) => currentUser = SeamlessPayFirebaseUser(user));
