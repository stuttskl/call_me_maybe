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
    double c_width = MediaQuery.of(context).size.width * 0.8;

    return Container(
        // Another fixed-height child.
        color: const Color(0xff008000), // Green
        // height: 120.0,
        // width: c_width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [Text('$jobTitle')],
            ),
            Row(
              children: [
                Expanded(
                  child: Text('$companyName', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('$jobDates', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('$location', textAlign: TextAlign.center),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text('$jobDescription', textAlign: TextAlign.left)
                ),
              ],
            ),
          ],
        ));
  }
}
