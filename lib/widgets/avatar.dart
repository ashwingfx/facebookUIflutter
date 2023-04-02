import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  //const Avatar({Key? key}) : super(key: key);
  final String displayImage;
  final bool statusIndicator;
  final bool displayBorde;

  Avatar({
    required this.displayImage,
    this.statusIndicator = true,
    this.displayBorde = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: 5,
          ),
          decoration: BoxDecoration(
            border: displayBorde
                ? Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
                : Border(),
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        statusIndicator
            ? Positioned(
                bottom: 2,
                right: 8,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      )),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
