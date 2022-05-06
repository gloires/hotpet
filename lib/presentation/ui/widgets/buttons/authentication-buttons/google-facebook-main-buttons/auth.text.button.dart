import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hotpet/config/theme.dart' as style;

class TextAuthButton extends StatelessWidget {
  final String subtext;
  final String textButton;
  final void Function()? onClick;

  const TextAuthButton(
      {Key? key, required this.subtext, required this.textButton, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          subtext,
          style: TextStyle(
              color: style.Colors.textGrey,
              fontFamily: 'e-Ukraine',
              fontWeight: FontWeight.w500,
              fontSize: 10.sp),
        ),
        TextButton(
            onPressed: onClick,
            child: Text(
              textButton,
              style: TextStyle(
                  color: style.Colors.orange,
                  fontFamily: 'e-Ukraine',
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp),
            ))
      ],
    );
  }
}
