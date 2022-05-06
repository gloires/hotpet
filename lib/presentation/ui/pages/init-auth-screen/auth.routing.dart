import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotpet/presentation/ui/pages/init-auth-screen/auth.splash.screen.dart';
import 'package:hotpet/presentation/presenters/bloc/authentication/authentication.dart';
import 'package:hotpet/config/theme.dart' as style;
import 'auth.bottom.part.dart';

class AuthorizationRouting extends StatelessWidget {
  const AuthorizationRouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: style.Colors.orange,
        body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                AuthorizationSplashScreen(state: state),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                AuthorizationBottomPart(state: state)
              ],
            );
          },
        ));
  }
}
