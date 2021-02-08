import 'package:flutter/material.dart';
import 'components/tab_bar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        // text themes/ styles
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
          headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
          headline3: TextStyle(fontSize: 16.0, fontFamily: 'RobotoMono'),
          bodyText1: TextStyle(fontSize: 14.0)
        )
      ),
      home: MainTabController()
    );
  }
}
