import 'package:flutter/material.dart';

class DiceButton extends StatelessWidget {
  const DiceButton(this.image, this.function, {super.key});
  final String image;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: function,
        child: SizedBox(
          height: 150,
          width: 150,
          child: Image.asset(image),
        ));
  }
}
