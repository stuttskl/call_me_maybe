import 'package:flutter/material.dart';
import '../components/magic_8ball_answer.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Call Me...Maybe?', style: Theme.of(context).textTheme.headline1)
            ),
            Answer()
          ],
        ),
      )
    );
  }
}
