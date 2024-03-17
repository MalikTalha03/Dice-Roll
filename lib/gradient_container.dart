import 'package:flutter/material.dart';
import 'package:diceroll/dice_roller.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.green],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
