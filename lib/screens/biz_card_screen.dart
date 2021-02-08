import 'package:flutter/material.dart';
import '../components/biz_card.dart';

class BusinessCardScreen extends StatelessWidget {
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
            BusinessCard(),
          ],
          )
      )
    );
  }
}

