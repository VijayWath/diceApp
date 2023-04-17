import 'package:flutter/material.dart';
import 'Gradiant_container.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradiantContainer(Color.fromARGB(255, 74, 217, 200),
            Color.fromARGB(255, 53, 173, 23)),
      ),
    ),
  );
}
