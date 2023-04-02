import 'package:flutter/material.dart';
import '../widgets/headerButtons.dart';

class HeaderSection extends StatelessWidget {
  //const HeaderSection({Key? key}) : super(key: key);
  final Color btnIconColor;
  final String btnText;
  final IconData btnIcon;

  final Color btnTwoColor;
  final String btnTwoText;
  final IconData btnTwoIcon;

  HeaderSection({
    required this.btnIconColor,
    required this.btnText,
    required this.btnIcon,
    required this.btnTwoColor,
    required this.btnTwoText,
    required this.btnTwoIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderButton(
            txtBtnColor: btnIconColor,
            txtBtnIcon: btnIcon,
            btnText: btnText,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
            txtBtnColor: btnTwoColor,
            txtBtnIcon: btnTwoIcon,
            btnText: btnTwoText,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
            txtBtnColor: Colors.purple,
            txtBtnIcon: Icons.room_outlined,
            btnText: "Rooms",
          ),
        ],
      ),
    );
  }
}
