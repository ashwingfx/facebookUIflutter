import 'package:flutter/material.dart';
import '../widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            leading: Text("People you may know"),
            trailing: Icon(
              Icons.more_horiz,
            ),
          ),
          Container(
            height: 340,
            child: ListView(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 25,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
