import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 1, 174, 67),
        body: GradientContainer(
          Colors.green,
          Colors.blue,
        ),
      ),
    ),
  );
}

