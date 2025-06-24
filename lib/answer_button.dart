import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const AnswerButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 96, 26, 108),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(text),
    );
  }
}