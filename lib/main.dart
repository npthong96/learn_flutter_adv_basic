import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Basic Flutter App',
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)),
          child: const StartScreen()),
      ),
    )
  );
}