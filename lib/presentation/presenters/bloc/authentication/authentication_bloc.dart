import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotpet/presentation/presenters/bloc/authentication/authentication.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationUninitialized()) {
    on<LogInEvent>(_onLogInEvent);
    on<LogOutEvent>(_onLogOutEvent);
  }

  FutureOr<void> _onLogInEvent(
      LogInEvent event, Emitter<AuthenticationState> emit) async {
    //TODO: LogInEvent
    //repository => persist(event.token)
  }

  FutureOr<void> _onLogOutEvent(
      LogOutEvent event, Emitter<AuthenticationState> emit) async {
    //TODO: LogOutEvent
    //repository => delete()
  }
}
