import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotpet/domain/usecases/authentication/get.user.dart';
import 'package:hotpet/presentation/presenters/bloc/authentication/authentication.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final GetUser getUser;
  AuthenticationBloc({
    required this.getUser
}) : super(AuthenticationUninitialized()) {
    on<GetUserEvent>(_getUserEvent);
  }

  FutureOr<void> _getUserEvent(
      GetUserEvent event,
      Emitter<AuthenticationState> emit
      ) async {
    emit(AuthenticationLoading());
    final user = await getUser();
    if (user) {
      emit(AuthenticationAuthenticated());
    } else {
      emit(AuthenticationUnauthenticated());
    }
  }
}
