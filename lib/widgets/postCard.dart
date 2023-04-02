import 'package:fbuidesign/assets.dart';
import 'package:fbuidesign/widgets/avatar.dart';
import 'package:flutter/material.dart';
import '../sections/headerSection.dart';
import 'bluetick.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          postTitle(),
          postImage(),
          postFooter(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderSection(
            btnText: "Like",
            btnIcon: Icons.thumb_up,
            btnIconColor: Colors.grey.shade300,
            btnTwoText: "Comment",
            btnTwoIcon: Icons.chat,
            btnTwoColor: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}

//POSTCARD HEADER
Widget postCardHeader() {
  return Container(
    child: ListTile(
      leading: Avatar(
        displayImage: vijay,
        statusIndicator: false,
      ),
      title: Row(
        children: [
          Text("Vijay"),
          BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text("5hr"),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[500],
            size: 15,
          )
        ],
      ),
      trailing: Icon(
        Icons.more_horiz,
        color: Colors.grey[500],
      ),
    ),
  );
}

Widget postTitle() {
  return Container(
    margin: EdgeInsets.only(
      top: 10,
      bottom: 10,
    ),
    //alignment: Alignment.center,
    child: Text("Happy Diwali!!"),
  );
}

Widget postImage() {
  return Container(
    child: Image.asset(
      pushpa,
      fit: BoxFit.cover,
    ),
  );
}

Widget postFooter() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Icon(Icons.thumb_up),
              Text("20k"),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Icon(Icons.thumb_up),
              Text("20k"),
              Icon(Icons.thumb_up),
              Text("20k"),
            ],
          ),
        )
      ],
    ),
  );
}
