import 'package:flutter/material.dart';
import '../components/magic_8ball_answer.dart';


class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16.0),
      child: 
        Center(
          child: Answer(),
        )
    );
    // return Container(
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Text('Call Me...Maybe?'),
    //           Answer(),
    //           Text('ANSWER'),
    //         ],
    //       )
    //     ],
    //   )
    // );
  }
}
