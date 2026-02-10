import 'package:flutter/material.dart';
import 'package:playground/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});
  final startAlignment = Alignment.bottomRight;
  final endAlignment = Alignment.topLeft;
  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
