import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatelessWidget {
  final String link; 

  const TextLink({Key key, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: _launchURL, child: Text('$link'));
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
