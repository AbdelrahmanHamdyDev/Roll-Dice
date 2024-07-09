import 'package:flutter/material.dart';
import 'package:rolldice/MainScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MainScreen(
          colors: const [
            Color(0xFF000000),
            Color(0xFF303030),
            Color(0xFF5E5E5E),
            Color(0xFF919191),
            Color(0xFFC6C6C6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ),
  );
}
