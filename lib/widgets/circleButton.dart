import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  //const CircleButton({Key? key}) : super(key: key);
  final IconData btnIcon;
  final void Function() btnAction;

  CircleButton({required this.btnIcon, required this.btnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: btnAction,
        icon: Icon(
          btnIcon,
          color: Colors.grey.shade900,
        ),
      ),
    );
  }
}
