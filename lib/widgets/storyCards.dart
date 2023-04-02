import 'package:fbuidesign/assets.dart';
import 'package:flutter/material.dart';
import 'avatar.dart';
import 'circleButton.dart';

class StoryCards extends StatelessWidget {
  //const StoryCards({Key? key}) : super(key: key);
  final String stryText;
  final String stryImage;
  final String stryAvatarImage;
  final bool displayBtn;

  StoryCards(
      {required this.stryText,
      required this.stryImage,
      required this.stryAvatarImage,
      this.displayBtn = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.only(
        top: 5,
        left: 5,
      ),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(stryImage),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 5,
            left: 5,
            child: Text(
              stryText,
              style: TextStyle(color: Colors.white),
            ),
          ),
          displayBtn
              ? Positioned(
                  child: CircleButton(
                    btnIcon: Icons.add,
                    btnAction: () {},
                  ),
                )
              : Avatar(
                  displayImage: stryAvatarImage,
                  statusIndicator: false,
                  displayBorde: true,
                ),
        ],
      ),
    );
  }
}
