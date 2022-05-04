import 'package:flutter/material.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/authorization_button.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/entrance_button.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/facebook_sign_in_button.dart';
import 'package:hotpet/presentation/ui/widgets/buttons/google_sign_in_button.dart';
import 'package:hotpet/config/theme.dart' as style;

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool copAnimated = false;
  bool animateCafeText = false;

  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController
      ..duration = const Duration(milliseconds: 700)
      ..forward();
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.7) {
        _coffeeController.stop();
        copAnimated = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          animateCafeText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _coffeeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        alignment: Alignment.bottomCenter,
        height: copAnimated ? screenHeight / 2.4 : 0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
          color: style.Colors.lightGrey,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 37.0, bottom: 6.0),
                    child: AuthorizationButton(
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
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                    child: AuthorizationButton(
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
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                    child: AuthorizationButton(
                      height: 60,
                      color: style.Colors.button,
                      child: EntranceButton(
                        title: 'Створити новий акаунт',
                        textAlign: TextAlign.center,
                        onClick: () {
                          //TODO: register
                        },
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Вже є акаунт?",
                          style: TextStyle(color: style.Colors.textGrey, fontFamily: 'e-Ukraine', fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        TextButton(
                            onPressed: () {
                              //TODO: login
                            },
                            child: const Text(
                              "Увійти!",
                              style: TextStyle(color: style.Colors.orange, fontFamily: 'e-Ukraine', fontWeight: FontWeight.w500, fontSize: 13),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
