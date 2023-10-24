import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/utils/constants.dart';

class RecentAchievementsCard extends StatelessWidget {
  final num index;
  final String title;
  final String date;
  const RecentAchievementsCard(
      {super.key,
      required this.index,
      required this.title,
      required this.date});

  @override
  Widget build(BuildContext context) {
    Image achieveImg = Image.asset('assets/img/achievements/achiev-$index.png');
    return Container(
      width: 100,
      height: 122,
      decoration: BoxDecoration(
          color: darkThemeSecondaryColor,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(top: 18.0, left: 10.0, right: 10.0),
      child: Column(children: [
        Center(
          child: achieveImg,
        ),
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: darkThemeTextContrastColor,
                fontWeight: FontWeight.w800,
                fontSize: contentFs),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 7.0),
            child: Center(
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: darkThemeTitletSubColor, fontSize: contentFs),
              ),
            )),
      ]),
    );
  }
}
