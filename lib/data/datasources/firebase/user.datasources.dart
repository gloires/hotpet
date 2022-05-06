import 'package:firebase_auth/firebase_auth.dart';

abstract class UserDataSource {
  Future<bool> getUser();
}

class UserDataSourceImpl implements UserDataSource {
  @override
  Future<bool> getUser() async {
    if (FirebaseAuth.instance.currentUser?.uid != null) {
      return true;
    } else {
      return false;
    }
  }
}

//TODO: auth with google

//TODO: auth with facebook
