import 'package:flutter/material.dart';
import 'package:my_app1/widgets/answer.dart';
import 'package:my_app1/widgets/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> questionsAndAnswers = [
    {
      "question": "1. How long ______ English?",
      "answers": [
        {"text": "do you learn", "correct": false},
        {"text": "are you learning", "correct": false},
        {"text": "have you been learning", "correct": true},
        {"text": "you learn", "correct": false},
      ]
    },
    {
      "question": "2. I ______ a reply to my letter in the next few days.",
      "answers": [
        {"text": "hope", "correct": false},
        {"text": "expect", "correct": true},
        {"text": "wait for", "correct": false},
        {"text": "get", "correct": false},
      ]
    },
    {
      "question": "3. You should ______ swimming.",
      "answers": [
        {"text": "start up", "correct": false},
        {"text": "get off", "correct": false},
        {"text": "take up", "correct": true},
        {"text": "take off", "correct": false},
      ]
    },
    {
      "question": "4. Would you mind ______ the window?",
      "answers": [
        {"text": "closing", "correct": true},
        {"text": "close", "correct": false},
        {"text": "to close", "correct": false},
        {"text": "closed", "correct": false},
      ]
    },
    {
      "question": "5. Tim ______ work tomorrow.",
      "answers": [
        {"text": "isn't going", "correct": false},
        {"text": "isn't", "correct": false},
        {"text": "isn't to", "correct": false},
        {"text": "isn't going to", "correct": true},
      ]
    },
    {
      "question": "6. He's interested ______ learning Spanish",
      "answers": [
        {"text": "on", "correct": false},
        {"text": "to", "correct": false},
        {"text": "in", "correct": true},
        {"text": "for", "correct": false},
      ]
    },
    {
      "question": "7. I come ______ England",
      "answers": [
        {"text": "from", "correct": true},
        {"text": "at", "correct": false},
        {"text": "to", "correct": false},
        {"text": "beyond", "correct": false},
      ]
    },
    {
      "question": "8. The tree ______ by lightning.",
      "answers": [
        {"text": "was flashed", "correct": false},
        {"text": "was struck", "correct": true},
        {"text": "struck", "correct": false},
        {"text": "flashed", "correct": false},
      ]
    },
    {
      "question": "9. You ______ better see a doctor.",
      "answers": [
        {"text": "did", "correct": false},
        {"text": "would", "correct": false},
        {"text": "should", "correct": false},
        {"text": "had", "correct": true},
      ]
    },
    {
      "question": "10. We arrived ______ England two days ago.",
      "answers": [
        {"text": "to", "correct": false},
        {"text": "in", "correct": true},
        {"text": "on", "correct": false},
        {"text": "at", "correct": false},
      ]
    },
  ];

  int index = 0,
      result = 0;

  void changeText(bool correct) {
    setState(() {
      index++;
      if (correct) result++;
    });
  }

  void restart() {
    setState(() {
      index = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("English Quiz"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: index < questionsAndAnswers.length
                ? Question(questionsAndAnswers[index]["question"],
                questionsAndAnswers[index]["answers"],
                changeText)
                :Answer(result, questionsAndAnswers.length, restart)
        ),
      ),
    );
  }
}
