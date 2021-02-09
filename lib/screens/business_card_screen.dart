import 'package:flutter/material.dart';
import '../components/contact_card.dart';

class BusinessCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContactCard(
              img: "assets/mr_robot.jpg",
              name: "Elliot Alderson",
              title: "Cybersecurity Engineer",
              company: "Allsafe Cybersecurity",
              phone: "(212) 555-0179", 
              website: "ecorp.com",
              email: "elliot@allsafe.com"
            )
          ],
        )
      )
    );
  }
}
