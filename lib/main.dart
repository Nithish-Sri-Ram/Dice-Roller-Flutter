import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.deepPurple, Color.fromARGB(255, 34, 0, 94)]),
      ),
    ),
  );
}
