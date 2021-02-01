import 'package:flutter/material.dart';
import 'contact_card.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ContactCard(
        img: 'assests/kendall.jpg',
        name: 'Kendall Roy',
        title: 'CEO',
        company: 'Waystar Royco',
        phone: '555-555-55555',
        website: 'waystar.com',
        email: 'kendall@royco.com'
      )
    );
  }
}
