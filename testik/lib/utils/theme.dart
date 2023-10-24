import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

final darkTheme = ThemeData(
    fontFamily: GoogleFonts.inter().fontFamily,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    scaffoldBackgroundColor: darkThemeMainColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
    ),
    primaryColor: primaryColor);
