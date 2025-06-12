import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Basic Flutter App',
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: StartScreen(),
      ),
    );
  }
}