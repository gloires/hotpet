import 'package:hotpet/data/datasources/firebase/user.datasources.dart';
import 'package:hotpet/domain/repositories/user.repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl({required this.userDataSource});

  @override
  Future<bool> getUser() async {
    return await userDataSource.getUser();
  }
}