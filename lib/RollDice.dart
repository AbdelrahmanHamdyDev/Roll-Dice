import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

var randomize = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  int current = 3;

  void Action() {
    setState(() {
      HapticFeedback.mediumImpact();
      current = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    var Screenwidth = MediaQuery.sizeOf(context).width;
    var Screenheight = MediaQuery.sizeOf(context).height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "Assets/Face_$current.png",
          scale: 5 * (Screenwidth / Screenheight),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: Action,
          child: const Text("RollDice"),
        ),
      ],
    );
  }
}
