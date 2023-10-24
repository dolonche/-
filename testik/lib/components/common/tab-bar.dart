import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/utils/constants.dart';

class TabBarSmall extends StatelessWidget {
  const TabBarSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 29,
      margin: EdgeInsets.only(bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: darkThemeTextContrastColor,
      ),
      child: Row(children: [
        Container(
            width: 82,
            height: 23,
            margin: EdgeInsets.only(left: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: darkThemeMainColor,
            ),
            child: Center(
                child: Text(
              'Last week',
              style: GoogleFonts.inter(
                color: darkThemeTextContrastColor,
                fontSize: contentFs,
              ),
            ))),
        Container(
            width: 77,
            height: 23,
            margin: EdgeInsets.only(left: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: darkThemeTextContrastColor,
            ),
            child: Center(
                child: Text(
              'Last month',
              style: GoogleFonts.inter(
                color: darkThemeMainColor,
                fontSize: contentFs,
              ),
            )))
      ]),
    );
  }
}
