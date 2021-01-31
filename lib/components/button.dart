import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: _launchURL,
    );
  }
}

_launchURL() async {
  const url = 'https://www.imdb.com/title/tt7660850/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
