import 'package:flutter/material.dart';
import 'package:hotpet/presentation/ui/pages/entrance/authorization.dart';
import 'package:hotpet/config/theme.dart' as style;

class SplashScreen extends StatelessWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: style.Colors.orange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Expanded(
            child: SizedBox.shrink(),
          ),
          Center(child: Text("HOTPET", style: TextStyle(color: Colors.white, fontFamily: 'e-UkraineHead', fontSize: 40),),),
          Expanded(
            child: SizedBox.shrink(),
          ),
          Authorization(),
        ],
      ),
    );
  }
}

