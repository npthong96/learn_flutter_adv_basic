
import 'package:adv_basic/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';
import 'package:adv_basic/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(onAddAnswer: addAnswer);
    });
  }

  void addAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = StartScreen(switchScreen);
      });
    }
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          child: activeScreen,
      ),
    ));
  }
}