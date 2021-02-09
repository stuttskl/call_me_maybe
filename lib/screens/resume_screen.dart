import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert';
// import custom widgets
import '../components/resume_entry.dart';
import '../components/resume_header.dart';


class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  List work_history = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/work_history.json');
    final data = await json.decode(response);

    if (this.mounted) {
      setState(() {
        work_history = data["work_history"];
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    // read json file upon loading of widget
    readJson();
    return LayoutBuilder(
      builder: (
        BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ResumeHeader(name: 'Elliot Alderson', email: 'elliot@ecorp.com', website: 'github.com/whoismrrobot'),
                for (var i = 0; i < work_history.length; i++)
                  ResumeEntry(
                    companyName: work_history[i]["title"],
                    jobTitle: work_history[i]["company"],
                    jobDates: work_history[i]["dates"],
                    location: work_history[i]["location"],
                    jobDescription: work_history[i]["description"]
                  )
              ],
            )
          );
        }
      );
  }
}
