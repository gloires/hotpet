import 'package:hotpet/domain/repositories/user.repository.dart';

class GetUser {
  final UserRepository userRepository;

  GetUser({required this.userRepository});

  Future<bool> call() async {
    return await userRepository.getUser();
  }
}