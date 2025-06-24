import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, 
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),),
            ...currentQuestion.answers.map((answer){
              return AnswerButton(
                text: answer,
                onPressed: () {
                  // Handle answer selection
                },
              );
            })
          ],
        ),
      ),
    );
  }
}