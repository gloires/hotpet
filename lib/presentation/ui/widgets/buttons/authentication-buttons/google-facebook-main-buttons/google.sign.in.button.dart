import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hotpet/config/theme.dart' as style;
import 'package:hotpet/presentation/ui/widgets/icons/auth_icons.dart';

class GoogleButton extends StatelessWidget {
  final IconData? trailing;
  final String title;
  final TextAlign? textAlign;
  final void Function()? onClick;

  const GoogleButton(
      {Key? key,
      required this.title,
      this.trailing,
      this.textAlign,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 4.5.h,
          width: 9.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: style.Colors.google),
          child: Icon(Auth.google, color: Colors.white, size: 4.5.h)),
      title: Text(title,
          style: TextStyle(
              fontFamily: 'e-Ukraine',
              fontSize: 11.2.sp,
              color: style.Colors.darkViolet),
          textAlign: textAlign),
      trailing: Icon(trailing),
      onTap: onClick,
    );
  }
}
