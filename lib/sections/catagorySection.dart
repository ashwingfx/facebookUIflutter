import 'package:flutter/material.dart';
import '../widgets/medCards.dart';
import '../widgets/suggestionCard.dart';

class CatagorySection extends StatelessWidget {
  const CatagorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.lightBlue.shade50.withOpacity(0.3),
      child: Stack(
        children: [
          Container(
            height: 100,
            color: Colors.lightGreen,
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              child: ListView(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                scrollDirection: Axis.horizontal,
                children: [
                  MedCards(),
                  MedCards(),
                  MedCards(),
                  MedCards(),
                  MedCards(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
