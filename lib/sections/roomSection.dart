import 'package:fbuidesign/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: tovino,
          ),
          Avatar(
            displayImage: vinayak,
          ),
          Avatar(
            displayImage: vijay,
          ),
          Avatar(
            displayImage: asif,
          ),
          Avatar(
            displayImage: vinayak,
          ),
          Avatar(
            displayImage: tovino,
          ),
          Avatar(
            displayImage: vinayak,
          ),
        ],
      ),
    );
  }
}

Widget createRoomButton() {
  return Container(
    padding: EdgeInsets.only(
      right: 5,
    ),
    child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            color: Colors.blue,
            width: 1,
          )),
      onPressed: () {},
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text("Chat\nRoom"),
    ),
  );
}
