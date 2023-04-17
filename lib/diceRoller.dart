import 'package:flutter/material.dart';
import 'dart:math';

final radomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceController = 2;
  void rollDice() {
    setState(() {
      diceController = radomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$diceController.png',
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 30),
            foregroundColor: Colors.black,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll dice'),
        ),
      ],
    );
  }
}
