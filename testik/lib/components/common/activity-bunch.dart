import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/utils/constants.dart';

class ActivityBunch extends StatelessWidget {
  final String value;
  final String name;
  const ActivityBunch({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: EdgeInsets.only(right: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: GoogleFonts.inter(
                color: darkThemeTextContrastColor,
                fontSize: 28.0,
                fontWeight: FontWeight.w700),
          ),
          Text(
            name,
            style: GoogleFonts.inter(
                color: darkThemeTitletSubColor, fontSize: contentFs),
          ),
        ],
      ),
    );
  }
}
