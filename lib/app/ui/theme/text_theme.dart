import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

export 'text_theme.dart';

final TextTheme appTextTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    color: Color(0xff404040),
    fontSize: 72.0,
    fontWeight: FontWeight.w700,
    letterSpacing: -1.5,
  ),
  headline2: GoogleFonts.poppins(
    color: Color(0xff404040),
    fontSize: 46.0,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.8,
  ),
  headline3: GoogleFonts.poppins(
    color: Color(0xff444444),
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  ),
  headline4: GoogleFonts.poppins(
    color: Color(0xff444444),
    fontSize: 36.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  ),
  headline5: GoogleFonts.poppins(
    color: Color(0xff4c4c4c),
    fontSize: 30.0,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.15,
  ),
  headline6: GoogleFonts.poppins(
    color: Color(0xff4c4c4c),
    fontSize: 24.0,
    fontWeight: FontWeight.w200,
    letterSpacing: 0.15,
  ),
  subtitle1: GoogleFonts.poppins(
    color: Color(0xff7a7a7a),
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ).copyWith(fontFamily: 'Koodak'),
  subtitle2: GoogleFonts.poppins(
    color: Color(0xff777777),
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
  ).copyWith(fontFamily: 'Koodak'),
  caption: GoogleFonts.raleway(
          color: Color(0xff777777),
          fontSize: 15.0,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.2)
      .copyWith(fontFamily: 'Koodak'),
  bodyText1: GoogleFonts.robotoMono(
    color: Color(0xff777777),
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  ).copyWith(fontFamily: 'Koodak'),
  bodyText2: GoogleFonts.robotoMono(
    color: Color(0xff777777),
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  ).copyWith(fontFamily: 'Koodak'),
);

final TextTheme appTextTheme2 = GoogleFonts.sourceSansProTextTheme();
final TextStyle cardTextStyle = GoogleFonts.robotoMono(
  color: AppColors.textGrayColorDark,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
