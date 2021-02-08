import 'package:flutter/material.dart';
import 'contact_info.dart';
import 'text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatelessWidget {
  const ContactCard(
    {Key key,
    this.img,
    this.name,
    this.title,
    this.company,
    this.phone,
    this.website,
    this.email})
    : super(key: key);

  final String name, img, title, company, phone, website, email;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(
        this.img,
        width: 100,
        height: 100,
      ),
      Text(this.name, style: Theme.of(context).textTheme.headline5),
      ContactInfo(contact: this.title),
      ContactInfo(contact: this.company),
      TextButton(
        child: Text(this.phone),
        onPressed: _launchPhone),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextButton(
                  child: Text(this.website), onPressed: _launchWebsite),
              ],
            ),
            Column(
                children: [
                  ContactInfo(contact: this.email),
                ],
              )
          ],
        ),
    ]);
  }
}

_launchWebsite() async {
  const url = 'https://www.imdb.com/title/tt7660850/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch';
  }
}

_launchPhone() async {
  final Uri _phoneLaunchUri = Uri(scheme: 'sms', path: ':2062902755');
  if (await canLaunch(_phoneLaunchUri.toString())) {
    await launch(_phoneLaunchUri.toString());
  } else {
    throw 'Could not launch phone';
  }
}