import 'package:flutter/material.dart';
import 'package:myapp2/pages/styled_text.dart';
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
            height: 200,
          ),
          FilledButton(
            onPressed: rollDice,
            style: FilledButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black
            ), 
            child: const StyledText("Roll Dice"))
        ],
      ),
    );
  }
  
  void rollDice() {
    setState(() {
      var diceRoll = Random().nextInt(6)+1;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
}