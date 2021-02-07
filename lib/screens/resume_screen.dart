import 'package:flutter/material.dart';
import '../components/resume_entry.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                children: <Widget>[
                  ResumeEntry(
                    companyName: 'Waystar Royco',
                    jobTitle: 'CEO',
                    jobDates: '2016 - Present',
                    location: 'Manhattan, NY',
                    jobDescription: 'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ), 
                  ResumeEntry(
                    companyName: 'Gamestop',
                    jobTitle: 'Sales Associate',
                    jobDates: '2016 - Present',
                    location: 'Brooklyn, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'ATN',
                    jobTitle: 'Newsreporter',
                    jobDates: '2016 - Present',
                    location: 'Manhattan, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'Waystar Royco',
                    jobTitle: 'CEO',
                    jobDates: '2016 - Present',
                    location: 'Manhattan, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ), 
                  ResumeEntry(
                    companyName: 'Gamestop',
                    jobTitle: 'Sales Associate',
                    jobDates: '2016 - Present',
                    location: 'Brooklyn, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'ATN',
                    jobTitle: 'Newsreporter',
                    jobDates: '2016 - Present',
                    location: 'Manhattan, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'Waystar Royco',
                    jobTitle: 'CEO',
                    jobDates: '2016 - Present',
                    location: 'Manhattan, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ), 
                  ResumeEntry(
                    companyName: 'Gamestop',
                    jobTitle: 'Sales Associate',
                    jobDates: '2016 - Present',
                    location: 'Brooklyn, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'ATN',
                    jobTitle: 'Newsreporter',
                    jobDates: '2016 - Present',
                    location: 'Manhattan, NY',
                    jobDescription: 'Nunc ut aliquam risus. Nulla non ex non mauris fringilla scelerisque in ac dui. Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
