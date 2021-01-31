import 'package:flutter/material.dart';
import '../screens/biz_card_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/question_screen.dart';

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.account_circle_rounded)), 
    Tab(icon: Icon(Icons.receipt_long_rounded)), 
    Tab(icon: Icon(Icons.help_outline)), 
  ];

  final screens = [BusinessCardScreen(), ResumeScreen(), QuestionScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: screens.length,
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
