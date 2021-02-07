import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatelessWidget {
  final String text;
  final String link;

  const TextLink({Key key, this.text, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: _launchURL(this.link), child: Text('$text'));
  }
}

_launchURL(link) {
  print("yo");
}
