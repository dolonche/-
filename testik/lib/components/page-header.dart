import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testik/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const String avatarPath = 'assets/img/content/avatar.png';
    Image avatarImg = Image.asset(avatarPath);
    return AppBar(
      backgroundColor: darkThemeMainColor,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        avatarImg,
        Text(
          'Dashboard',
          style: GoogleFonts.inter(
            color: darkThemeTextContrastColor,
            fontWeight: FontWeight.w700,
            fontSize: pageTitleFs,
          ),
        ),
        SvgPicture.asset('assets/img/icons/notification.svg')
      ]),
    );
  }
}
