import 'package:flutter/material.dart';
import '../components/business_card.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io';
import '../components/contact_card.dart';

class TestState extends StatefulWidget {
  @override
  _TestStateState createState() => _TestStateState();
}

class _TestStateState extends State<TestState> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/user_data.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["user"];
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return SafeArea(
      left: true,
      right: true,
      top: true,
      bottom: true,
      child: ContactCard(
        img: _items[0]["img"],
        name: _items[0]["name"],
        title: _items[0]["title"],
        company: _items[0]["company"],
        phone: _items[0]["number"],
        website: _items[0]["website"],
        email: _items[0]["email"]
      )
    );
  }
}
