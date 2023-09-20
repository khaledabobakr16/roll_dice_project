import 'dart:math';

import 'package:flutter/material.dart';
import '../widget/dice_button.dart';

class RandomDiceRollScreen extends StatefulWidget {
  const RandomDiceRollScreen({super.key});

  @override
  State<RandomDiceRollScreen> createState() => _RandomDiceRollState();
}

class _RandomDiceRollState extends State<RandomDiceRollScreen> {
  int numberdice = Random().nextInt(6);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.4,
          ),
          DiceButton("images/dice-$numberdice.png", () {
            randomRoll();
          }),
          const SizedBox(height: 15),
          Text("Dice Roll is ${numberdice + 1}",
              style: const TextStyle(
                color: Colors.teal,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }

  void randomRoll() {
    setState(() {
      numberdice = Random().nextInt(6);
    });
  }
}
