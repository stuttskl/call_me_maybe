import 'package:flutter/material.dart';
import 'contact_info.dart';
import 'button.dart';
import 'text_button.dart';
class ContactCard extends StatelessWidget {
  const ContactCard({
    Key key,
    this.img,
    this.name,
    this.title,
    this.company,
    this.phone,
    this.website,
    this.email
  }) : super(key: key);

  final String name, img, title, company, phone, website, email;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // ButtonDemo(),
      Image.asset(
        this.img,
        width: 150,
        height: 150,
      ),
      Text(this.name, style: Theme.of(context).textTheme.headline5),
      ContactInfo( contact: this.title),
      ContactInfo(contact: this.company),
      ContactInfo(contact: this.phone),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0), 
              child: Column(children: [
                TextLink(link: this.website),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.all(16.0), 
              child: Column(children: [
                TextLink(link: this.email),
                ],
              )
            ),
          ],
        ),
      )
    ]);
  }
}
