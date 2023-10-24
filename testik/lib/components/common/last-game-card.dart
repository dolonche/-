import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/utils/constants.dart';

class LastGameCard extends StatelessWidget {
  final String sport;
  final String versusName;
  final String area;
  final String date;
  final bool win;
  const LastGameCard(
      {super.key,
      required this.sport,
      required this.versusName,
      required this.area,
      required this.date,
      required this.win});

  @override
  Widget build(BuildContext context) {
    const String swapImgPath = 'assets/img/icons/swap.svg';
    const String areaImgPath = 'assets/img/icons/area.svg';
    final String sportImgPath =
        'assets/img/icons/sport-${sport.toLowerCase()}.svg';

    return Container(
      width: 200,
      height: 125.0,
      decoration: BoxDecoration(
          color: win == true ? successBgColor : failBgColor,
          borderRadius: const BorderRadius.all(Radius.circular(20.0))),
      padding: EdgeInsets.only(top: 10.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textBaseline: TextBaseline.ideographic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                sport,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
              Text(
                '+30',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                    color: darkThemeTextSubColor),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 2.0),
          child: Row(textBaseline: TextBaseline.ideographic, children: [
            Text(
              'Sagar sagar',
            ),
            Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: SvgPicture.asset(swapImgPath),
            ),
            Text(
              versusName,
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.0,
          ),
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(right: 5.0),
              child: SvgPicture.asset(areaImgPath),
            ),
            Text(area)
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: GoogleFonts.inter(color: darkThemeTextSubColor),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -14.0, 0.0),
                  child: SvgPicture.asset(sportImgPath),
                ),
              ]),
        )
      ]),
    );
  }
}
