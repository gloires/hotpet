import 'package:flutter/material.dart';
import 'package:hotpet/config/theme.dart' as style;

class AuthorizationCard extends StatelessWidget {
  final double height;
  final Widget child;
  const AuthorizationCard(
      {Key? key,
        required this.child,
        required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return AnimatedContainer(
     duration: const Duration(milliseconds: 400),
     alignment: Alignment.bottomCenter,
     height: height,
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
     child: child,
   );
  }

}