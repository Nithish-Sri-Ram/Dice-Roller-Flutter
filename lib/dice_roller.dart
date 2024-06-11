import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    //createstate is used instead of build when using with stateless widget
    return _DiceRollerState();
  }
}
var randomizer=Random();   //use it like this to avoid creation of multiple objects under the rolldice function

class _DiceRollerState extends State<DiceRoller> {
  ///_ is used to denote that it is a private
  var curr=2;

  void rolldice() {
    var diceroll=randomizer.nextInt(6)+1;   //This give random nubers between 1 and 6 - whereas Rsndom(),nextInt() - will give random numbers from 0 to 5

    setState(() {
        curr=diceroll;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
         'Assets/Images/dice-$curr.png',
          width: 200,
        ),
        //ElevatedButton(onPressed: rolldice, child: const Text('Roll Dice')),
        //OutlinedButton(onPressed: rolldice, child: const Text('Roll Dice')),
        // const SizedBox(height: 20),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
