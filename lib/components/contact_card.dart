import 'package:flutter/material.dart';
import 'contact_info.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key key,
    this.img,
    this.name,
    this.title,
    this.company,
    this.phone,
    this.website,
  }) : super(key: key);

  final String name, img, title, company, phone, website;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        this.img,
        width: 150,
        height: 150,
      ),
      Text(this.name, style: Theme.of(context).textTheme.headline5),
      ContactInfo(contact: this.title),
      ContactInfo(contact: this.company),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContactInfo(contact: this.phone),
            ContactInfo(contact: this.website)
          ],
        ),
      )
    ]);
  }
}
