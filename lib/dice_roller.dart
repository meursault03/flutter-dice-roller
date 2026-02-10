import 'package:flutter/material.dart';
import 'package:playground/style_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      var roll = Random().nextInt(6) + 1;

      activeDiceImage = 'assets/images/dice-$roll.png';
    });

    print('Mudando o dado');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 180),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 157, 139, 219),

            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          child: const StyleText('Rolar Dado', 28),
        ),
      ],
    );
  }
}
