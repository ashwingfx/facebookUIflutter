import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  //const HeaderButton({Key? key}) : super(key: key);
  final IconData txtBtnIcon;
  final Color txtBtnColor;
  final String btnText;

  HeaderButton({
    required this.txtBtnIcon,
    required this.txtBtnColor,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        txtBtnIcon,
        color: txtBtnColor,
      ),
      label: Text(btnText),
    );
  }
}
