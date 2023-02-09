import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  final List<Map<String, dynamic>> answers;
  final Function changeText;

  Question(this.question, this.answers, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () => changeText(
              answers[0]["correct"]),
          child: Text(
            answers[0]["text"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => changeText(
              answers[1]["correct"]),
          child: Text(
            answers[1]["text"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => changeText(
              answers[2]["correct"]),
          child: Text(
            answers[2]["text"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => changeText(
              answers[3]["correct"]),
          child: Text(
            answers[3]["text"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }

}