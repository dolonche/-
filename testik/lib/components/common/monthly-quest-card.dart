import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:testik/utils/constants.dart';

class MonthlyQuestCard extends StatelessWidget {
  final num index;
  final String title;
  final double value;
  final String valueText;
  const MonthlyQuestCard(
      {super.key,
      required this.index,
      required this.title,
      required this.value,
      required this.valueText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10.0),
      height: 144,
      decoration: BoxDecoration(
          color: darkThemeSecondaryColor,
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.only(left: 10.0, right: 20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: darkThemeTextContrastColor),
                ),
                Text(
                  valueText,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    letterSpacing: -3.5,
                    fontSize: 48.0,
                    color: darkThemeTextContrastColor,
                  ),
                )
              ],
            ),
            Container(
                transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: 53,
                        lineWidth: 10,
                        percent: value,
                        backgroundColor: primaryColor,
                        progressColor: Color.fromRGBO(172, 218, 236, 1),
                        circularStrokeCap: CircularStrokeCap.round,
                        animation: true,
                        animationDuration: 1000,
                        center: SvgPicture.asset(
                            'assets/img/icons/quest-$index.svg'),
                      )
                    ]))
          ]),
    );
  }
}
