import 'package:fbuidesign/sections/catagorySection.dart';
import 'package:fbuidesign/sections/headerSection.dart';
import 'package:fbuidesign/sections/roomSection.dart';
import 'package:fbuidesign/sections/statusSection.dart';
import 'package:fbuidesign/sections/storySection.dart';
import 'package:fbuidesign/sections/suggestionSection.dart';
import 'package:fbuidesign/widgets/circleButton.dart';
import 'package:fbuidesign/widgets/postCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget divider({required double thick}) {
    return Divider(
      thickness: thick,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            CircleButton(
              btnIcon: Icons.search,
              btnAction: () {
                print("Search Button Clicked");
              },
            ),
            CircleButton(
                btnIcon: Icons.chat,
                btnAction: () {
                  print("Chat Button Pressed");
                })
          ],
        ),
        body: ListView(
          children: [
            Statusection(),
            divider(thick: 1),
            HeaderSection(
              btnText: "Live",
              btnIcon: Icons.video_call,
              btnIconColor: Colors.red,
              btnTwoText: "Photos",
              btnTwoIcon: Icons.photo_album,
              btnTwoColor: Colors.green,
            ),
            divider(thick: 10),
            RoomSection(),
            divider(thick: 10),
            StorySection(),
            divider(thick: 10),
            PostCard(),
            divider(thick: 10),
            SuggestionSection(),
            divider(thick: 10),
            CatagorySection(),
            divider(thick: 10),
          ],
        ),
      ),
    );
  }
}
