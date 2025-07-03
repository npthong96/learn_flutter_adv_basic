import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key, required this.onAddAnswer}) : super(key: key);

  final void Function(String answer) onAddAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionIndex = 0;

  void nextQuestion(String answer) {
    widget.onAddAnswer(answer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
              color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: AnswerButton(
                  text: answer,
                  onPressed: () {
                    nextQuestion(answer);
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}