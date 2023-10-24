import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/components/common/activity-bunch.dart';
import 'package:testik/components/common/tab-bar.dart';
import 'package:testik/utils/constants.dart';

class YourActivity extends StatelessWidget {
  const YourActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TabBarSmall(),
        Row(
          children: [
            ActivityBunch(
              name: 'Games',
              value: '20',
            ),
            ActivityBunch(
              name: 'Disciplines',
              value: '4',
            ),
            ActivityBunch(
              name: 'Score change',
              value: '+80',
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                ActivityBunch(
                  name: 'Longest win streak',
                  value: '3',
                ),
                ActivityBunch(
                  name: 'Longest loose streak',
                  value: '1',
                ),
                ActivityBunch(
                  name: 'Average rating',
                  value: '4.73',
                ),
              ],
            ))
      ]),
    );
  }
}
