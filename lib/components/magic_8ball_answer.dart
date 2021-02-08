import 'package:flutter/material.dart';
import 'dart:math';

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  String placeholder = "Yes, definitely.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Call Me...Maybe?', style: TextStyle(fontSize: 30))),
            GestureDetector(
              onTap: () => changeText(),
              child: Text('Ask a question ... tap for the answer.', style: TextStyle(fontSize: 18))
            ),
            Container(padding: EdgeInsets.all(16.0), child: Text('$placeholder', style: TextStyle(fontSize: 30))),
          ],
        ),
      )
    );
  }

  changeText() {
    setState(() {
      List<String> answers = [
        "Yes, definitely",
        "No way",
        "Literally...impossible",
        "Maybe, I dunno?",
        "For sure, mate",
        "No.",
        "Idk",
        "Why are you asking me?"
      ];

      random(min, max) {
        var rn = new Random();
        return min + rn.nextInt(max - min);
      }

      placeholder = answers[random(0, answers.length)];
    });
  }
}
