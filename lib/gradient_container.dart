import 'package:flutter/material.dart';
import 'package:myapp2/dice_roller.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff2980B9), Color(0xff6DD5FA), Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
