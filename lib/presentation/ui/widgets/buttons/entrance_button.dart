import 'package:flutter/material.dart';

class EntranceButton extends StatelessWidget {
  final IconData? trailing;
  final String title;
  final TextAlign? textAlign;
  final void Function()? onClick;

  const EntranceButton(
      {Key? key,
        required this.title,
        this.trailing,
        this.textAlign,
        this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: ListTile(
        title: Text(title,
            style: const TextStyle(fontFamily: 'e-Ukraine', fontSize: 15, color: Colors.white),
            textAlign: textAlign),
        onTap: onClick,
      ),
    );
  }
}
