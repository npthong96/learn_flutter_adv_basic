import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text("Learn Flutter the fun way"),
            ElevatedButton(onPressed: (){}, child: const Text("Get Started")),
          ]
        ),
    );
  }
}