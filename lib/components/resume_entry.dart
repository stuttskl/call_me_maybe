import 'package:flutter/material.dart';

class ResumeEntry extends StatelessWidget {
  final String companyName, jobTitle, jobDates, location, jobDescription;

  const ResumeEntry(
    {Key key,
    this.companyName,
    this.jobTitle,
    this.jobDates,
    this.location,
    this.jobDescription})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(left: true, right: true, top: false, bottom: false,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [Text('$jobTitle', style: TextStyle(fontWeight: FontWeight.bold))],
            ),
            Row(
              children: [
                Expanded(child: Text('$companyName', textAlign: TextAlign.left)),
                Expanded(child: Text('$jobDates', textAlign: TextAlign.center)),
                Expanded(child: Text('$location', textAlign: TextAlign.right)),
              ],
            ),
            Row(
              children: [ Expanded(child: Text('$jobDescription', textAlign: TextAlign.left))],
            ),
            Divider(color: Colors.black)
          ],
        )
      )
    );
  }
}
