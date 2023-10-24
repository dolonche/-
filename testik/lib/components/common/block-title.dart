import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/utils/constants.dart';

class BlockTitle extends StatelessWidget {
  final double marginTop;
  final double marginBot;
  final String title;
  final String? more;
  BlockTitle({
    Key? key,
    required this.title,
    this.more,
    double? marginTop,
    double? marginBot,
  })  : marginTop = marginTop ?? 0.0,
        marginBot = marginBot ?? 0.0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: titlePadding,
            right: containerPadding,
            top: marginTop,
            bottom: marginBot),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textBaseline: TextBaseline.ideographic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  color: darkThemeTextContrastColor,
                  fontWeight: FontWeight.w700,
                  fontSize: blockTitleFs,
                ),
              ),
              if (more != null)
                Text(
                  more!,
                  style: GoogleFonts.inter(
                    color: darkThemeTitletSubColor,
                    fontWeight: FontWeight.w700,
                    fontSize: blockTitleSubFs,
                  ),
                )
            ]));
  }
}
