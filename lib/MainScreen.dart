import 'package:flutter/material.dart';
import 'package:rolldice/RollDice.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    super.key,
    required this.colors,
    required this.begin,
    required this.end,
  });

  List<Color> colors;
  AlignmentGeometry begin;
  AlignmentGeometry end;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
