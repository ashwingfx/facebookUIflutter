import 'package:fbuidesign/assets.dart';
import 'package:fbuidesign/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../widgets/storyCards.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 5,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCards(
            stryImage: fahad,
            stryText: "Add to story",
            stryAvatarImage: fahad,
            displayBtn: true,
          ),
          StoryCards(
            stryImage: maala,
            stryText: "Tovino",
            stryAvatarImage: tovino,
          ),
          StoryCards(
            stryImage: aadu,
            stryText: "Vinayak",
            stryAvatarImage: vinayak,
          ),
          StoryCards(
            stryImage: kooman,
            stryText: "Asif",
            stryAvatarImage: asif,
          ),
        ],
      ),
    );
  }
}
