import 'package:flutter/material.dart';

class ResumeHeader extends StatelessWidget {
  final String name, email, website;

  const ResumeHeader({
    Key key, 
    this.name, 
    this.email, 
    this.website}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(this.name, style: Theme.of(context).textTheme.headline1), 
          Text(this.email), 
          Text(this.website)
        ],
      )
    );
  }
}
