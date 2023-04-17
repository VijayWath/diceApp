import 'package:flutter/material.dart';
import 'diceRoller.dart';

class GradiantContainer extends StatelessWidget {
  GradiantContainer(this.color1, this.color2, {super.key}); // positionsal ARGS
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
