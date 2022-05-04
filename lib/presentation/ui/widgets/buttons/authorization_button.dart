import 'package:flutter/material.dart';

class AuthorizationButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final Widget child;

  const AuthorizationButton(
      {Key? key,
        required this.child,
        this.color,
        this.width,
        this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: child));
  }
}
