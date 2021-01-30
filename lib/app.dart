import 'package:flutter/material.dart';
import 'components/tab_bar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MainTabController()
    );
  }
}
