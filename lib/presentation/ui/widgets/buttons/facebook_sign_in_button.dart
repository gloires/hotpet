import 'package:flutter/material.dart';
import 'package:hotpet/config/theme.dart' as style;
import 'package:hotpet/presentation/ui/widgets/icons/auth_icons.dart';

class FacebookButton extends StatelessWidget {
  final IconData? trailing;
  final String title;
  final TextAlign? textAlign;
  final void Function()? onClick;

  const FacebookButton(
      {Key? key,
        required this.title,
        this.trailing,
        this.textAlign,
        this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
            leading: Container(
              height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: style.Colors.facebook
                ),
                child: const Icon(Auth.facebook, color: Colors.white, size: 33,)),
            title: Text(title,
                style: const TextStyle(fontFamily: 'e-Ukraine', fontSize: 15),
                textAlign: textAlign),
            trailing: Icon(trailing),
            onTap: onClick,
          );
  }
}
