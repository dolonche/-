import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testik/utils/constants.dart';

class PageHeader extends StatelessWidget implements PreferredSizeWidget {
  const PageHeader({Key? key, required this.imagePath, required this.title})
      : super(key: key);
  final String imagePath;
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Image avatarImg = Image.asset(imagePath);
    return AppBar(
      backgroundColor: darkThemeMainColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          avatarImg,
          Text(
            title,
            style: GoogleFonts.inter(
              color: darkThemeTextContrastColor,
              fontWeight: FontWeight.w700,
              fontSize: pageTitleFs,
            ),
          ),
          SvgPicture.asset('assets/img/icons/notification.svg'),
        ],
      ),
    );
  }
}
