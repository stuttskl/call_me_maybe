import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final String contact;

  const ContactInfo({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('$contact')]
    );
  }
}