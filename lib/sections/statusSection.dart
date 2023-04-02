import 'package:flutter/material.dart';
import '../assets.dart';
import '../widgets/avatar.dart';

class Statusection extends StatelessWidget {
  const Statusection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: fahad,
        statusIndicator: false,
      ),
      title: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
