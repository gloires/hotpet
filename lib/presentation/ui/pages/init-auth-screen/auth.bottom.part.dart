import 'package:flutter/material.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/authentication-buttons/google-facebook-main-buttons/auth.text.button.dart';
import 'package:sizer/sizer.dart';
import 'package:hotpet/presentation/presenters/bloc/authentication/authentication.dart';
import 'package:hotpet/presentation/ui/widgets/cards/auth.card.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/authentication-buttons/auth.template.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/authentication-buttons/google-facebook-main-buttons/auth.main.button.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/authentication-buttons/google-facebook-main-buttons/facebook.sign.in.button.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/authentication-buttons/google-facebook-main-buttons/google.sign.in.button.dart';
import 'package:hotpet/config/theme.dart' as style;

class AuthorizationBottomPart extends StatefulWidget {
  final AuthenticationState state;

  const AuthorizationBottomPart({Key? key, required this.state}) : super(key: key);

  @override
  State<AuthorizationBottomPart> createState() => _AuthorizationBottomPartState();
}

class _AuthorizationBottomPartState extends State<AuthorizationBottomPart>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  bool flagAnimated = false;
  bool animateLogoText = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
    animationController
      ..duration = const Duration(milliseconds: 700)
      ..forward();
    animationController.addListener(() {
      if (animationController.value > 0.7) {
        animationController.stop();
        flagAnimated = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          animateLogoText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.state is AuthenticationUnauthenticated) {
      return AuthorizationCard(
        height: flagAnimated ? 45.h : 0,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 0.9.h),
                    child: AuthorizationButton(
                      height: 7.4.h,
                      color: Colors.white,
                      child: GoogleButton(
                        title: 'Увійти з Google',
                        textAlign: TextAlign.center,
                        onClick: () {
                          //TODO: google sign in
                        },
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 0.9.h, bottom: 0.9.h),
                    child: AuthorizationButton(
                      height: 7.4.h,
                      color: Colors.white,
                      child: FacebookButton(
                        title: 'Увійти з Facebook',
                        textAlign: TextAlign.center,
                        onClick: () {
                          //TODO: facebook sign in
                        },
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 0.9.h, bottom: 0.9.h),
                    child: AuthorizationButton(
                      height: 7.4.h,
                      color: style.Colors.darkViolet,
                      child: EntranceButton(
                        title: 'Створити новий акаунт',
                        textAlign: TextAlign.center,
                        onClick: () {
                          //TODO: register
                        },
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(bottom: 0.9.h),
                    child: TextAuthButton(
                      subtext: 'Вже є акаунт?',
                      textButton: 'Увійти!',
                      onClick: () {
                        // TODO: login
                      },
                    )),
              ],
            ),
          ),
        ),
      );
    }
    return Container();
  }
}
