import 'package:flutter/material.dart';
import '../components/resume_entry.dart';
import '../components/resume_header.dart';


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
                  ResumeHeader(name: 'Elliot Alderson', email: 'elliot@ecorp.com', website: 'github.com/whoismrrobot'),
                  ResumeEntry(
                    companyName: 'Allsafe Cybersecurity',
                    jobTitle: 'Cybersecurity Engineer',
                    jobDates: '2014 - Present',
                    location: 'Manhattan, NY',
                    jobDescription:
                      'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'E-Corp',
                    jobTitle: 'Software Developer',
                    jobDates: '2010 - 2014',
                    location: 'Manhattan, NY',
                    jobDescription:
                      'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'The Dark Army',
                    jobTitle: 'Hacker',
                    jobDates: '2009 - Present',
                    location: 'Remote',
                    jobDescription:
                        'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'Allsafe Cybersecurity',
                    jobTitle: 'Cybersecurity Engineer',
                    jobDates: '2014 - Present',
                    location: 'Manhattan, NY',
                    jobDescription:
                      'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'E-Corp',
                    jobTitle: 'Software Developer',
                    jobDates: '2010 - 2014',
                    location: 'Manhattan, NY',
                    jobDescription:
                      'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
                  ),
                  ResumeEntry(
                    companyName: 'The Dark Army',
                    jobTitle: 'Hacker',
                    jobDates: '2009 - Present',
                    location: 'Remote',
                    jobDescription:
                        'Aenean faucibus suscipit orci, vitae lacinia libero sollicitudin sed. Aliquam a ligula ligula. Morbi vestibulum felis eget tempor gravida. Aenean cursus tincidunt enim, quis pulvinar ipsum ultrices sit amet. Etiam et dui eget dolor hendrerit posuere. Ut vitae interdum urna.',
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
