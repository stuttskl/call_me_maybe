import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _fetchAnswer();
        }
      )  
    );
  }
}

_fetchAnswer() {
  Text("yo");
}