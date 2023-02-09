import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final int result;
  final int questionLength;
  final Function() restart;

  Answer(this.result, this.questionLength, this.restart);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Result $result/$questionLength",
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: restart,
            icon: const Icon(Icons.restart_alt),
            label: const Text("RESTART"),
          )
        ],
      ),
    );
  }

}