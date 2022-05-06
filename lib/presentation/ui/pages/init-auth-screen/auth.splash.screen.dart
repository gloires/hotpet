import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hotpet/presentation/presenters/bloc/authentication/authentication.dart';

class AuthorizationSplashScreen extends StatefulWidget {
  final AuthenticationState state;

  const AuthorizationSplashScreen({Key? key, required this.state}) : super(key: key);

  @override
  State<AuthorizationSplashScreen> createState() => _AuthorizationSplashScreenState();
}

class _AuthorizationSplashScreenState extends State<AuthorizationSplashScreen> {

  @override
  Widget build(BuildContext context) {
    if (widget.state is AuthenticationUninitialized ||
        widget.state is AuthenticationUnauthenticated) {
      return Center(
        child: Text(
          "HOTPET",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'e-UkraineHead',
              fontSize: 35.sp),
        ),
      );
    }
    return Container();
  }
}
