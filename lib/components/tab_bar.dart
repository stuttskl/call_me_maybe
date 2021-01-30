import 'package:flutter/material.dart';
import '../screens/biz_card_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/question_screen.dart';

class MainTabController extends StatelessWidget {
  static const tabs = [Tab(text: 'One'), Tab(text: 'Two'), Tab(text: 'Three')];

  final screens = [BusinessCardScreen(), ResumeScreen(), QuestionScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Call Me Maybe'), 
          bottom: TabBar(tabs: tabs)
        ),
        body: TabBarView(
          children: screens
        )
      )
    );
  }
}
