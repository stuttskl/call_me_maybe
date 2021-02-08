import 'package:flutter/material.dart';
import 'contact_card.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true, right: true, top: true, bottom: true,
      child: ContactCard(
        img: 'assests/mr_robot.jpg',
        name: 'Elliot Alderson',
        title: 'Cybersecurity Engineer',
        company: 'E-Corp',
        phone: '(212) 555-0179',
        website: 'ecorp.com',
        email: 'elliot@ecorp.com'
      )
    );
  }
}
