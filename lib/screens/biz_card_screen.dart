import 'package:flutter/material.dart';
import '../components/business_card.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io';

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

