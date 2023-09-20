import 'package:flutter/material.dart';
import 'screens/random_dice_roll_screen.dart';
import 'widget/gradient_container.dart';

main() => runApp(const RollDiceApp());

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: GradientContainer(RandomDiceRollScreen()),
      )),
    );
  }
}
