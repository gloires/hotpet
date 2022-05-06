import 'package:get_it/get_it.dart';
import 'package:hotpet/data/datasources/firebase/user.datasources.dart';
import 'package:hotpet/data/repositories/user.repository.impl.dart';
import 'package:hotpet/domain/repositories/user.repository.dart';
import 'package:hotpet/domain/usecases/authentication/get.user.dart';

import 'package:hotpet/presentation/presenters/bloc/authentication/authentication.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// BLoC

  sl.registerFactory(
          () =>
          AuthenticationBloc(
              getUser: sl()
          )
  );

  // UseCases

  sl.registerLazySingleton(
          () => GetUser(
              userRepository: sl()
          )
  );

  /// Repository

  sl.registerLazySingleton<UserRepository>(
          () => UserRepositoryImpl(
              userDataSource: sl()
          )
  );

  /// Datasource

  sl.registerLazySingleton<UserDataSource>(
          () => UserDataSourceImpl()
  );
}