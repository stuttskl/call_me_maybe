import 'package:flutter/material.dart';
import '../models/random_answer.dart';

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  final answer = RandomAnswer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              answer.selectRandom();
            });
          },
          child: Text('Ask a question ... tap for the answer.',
            style: TextStyle(fontSize: 18)
          )
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text('${answer.randomAnswer}',
            style: Theme.of(context).textTheme.headline2)
        )
      ],
    );
  }
}
