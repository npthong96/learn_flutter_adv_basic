
import 'package:adv_basic/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';
import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {
  String? activeScreen;
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  void addAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';
      });
    }
  }

  @override
  void initState() {
    activeScreen ='start_screen';
    super.initState();
  }

  Widget? getActiveScreen() {
    if (activeScreen == 'question_screen') {
      return QuestionScreen(onAddAnswer: addAnswer);
    }
    if (activeScreen == 'start_screen') {
      return StartScreen(switchScreen);
    }
    if (activeScreen == 'results_screen') {
      return ResultsScreen(choosenAnswers: selectedAnswers,);
    }
    return null;
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
          child: getActiveScreen(),
      ),
    ));
  }
}