import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImg = 'assets/images/dice-2.png';
  final random = Random();
  void rollDice() {
    setState(() {
      final randomNumber = random.nextInt(6) + 1;
      activeImg = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImg,
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 235, 52, 113),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
          ),
          child: const Text(
            'Roll ME!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        )
      ],
    );
  }
}
