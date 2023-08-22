import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'text_theme.dart';

export 'app_theme.dart';

final ThemeData appThemeData = ThemeData(
  backgroundColor: AppColors.white,
  scaffoldBackgroundColor: Color(0xffffffff),
  primaryColorDark: Color(0xff8b0404),
  primaryColorLight: Color(0xfffd825f),
  primaryColor: Color(0xffb71c1c),
  primaryIconTheme: IconThemeData(
    color: Colors.black38,
  ),
  colorScheme: ColorScheme(
    background: AppColors.white,
    primary: Color(0xffb71c1c),
    // primaryVariant: Color(0xff7f0000),
    secondary: Color(0xffffa726),
    // secondaryVariant: Color(0xffc77800),
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onBackground: AppColors.textGrayColorDark,
    brightness: Brightness.light,
    surface: Color(0xffff833a),
    onSurface: Color(0xff000000),
    error: Color(0xfffbc02d),
    onError: Color(0xff000000),
  ),
  dialogBackgroundColor: Color(0xFFF3F3F3),
  // buttonColor: Color(0xffe4a37d),
  cardColor: AppColors.cardColorLight,
  iconTheme: IconThemeData(
    color: Color(0xfffffcfc),
  ),
  // accentIconTheme: IconThemeData(color: Color(0xFFE6E6E6)),
  bottomAppBarColor: Color(0xfffff5ea),
  appBarTheme: AppBarTheme(
    // color: Color(0xffffd420),
    // backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    color: Colors.transparent,
    elevation: 0,
    // brightness: Brightness.light,
    // centerTitle: true,
    iconTheme: IconThemeData(
      color: AppColors.accent,
    ),
    // foregroundColor: Color(0xffffd420),
    // backgroundColor: Color(0xfffffae8),
  ),
  canvasColor: Color(0x85fff1f1),
  splashColor: Color(0xffffbdbd),
  hoverColor: Color(0x54fae7e7),
  fontFamily: 'Georgia',
  textTheme: /*appTextTheme*/ appTextTheme2,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(const Color(0xffa4a4a4)),
      foregroundColor: MaterialStateProperty.all(const Color(0xff4c4c4c)),
      overlayColor: MaterialStateProperty.all(const Color(0xffdbdbdb)),
      shape: MaterialStateProperty.all(CircleBorder()),
      minimumSize: MaterialStateProperty.all(Size(40, 40)),
      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
    ),
  ),
  cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cardColorLight,
      elevation: 4,
      shadowColor: Colors.black26),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  buttonTheme: ButtonThemeData(
      // splashColor: Color(0xffefefef),
      // hoverColor: Color(0xffdbdbdb),
      ),
);
//
// final OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
//   style: ButtonStyle(
//     backgroundColor:MaterialStateProperty.all(appThemeData.backgroundColor),
//     foregroundColor: MaterialStateProperty.all(Color(0xff4c4c4c)),
//     overlayColor: MaterialStateProperty.all(Color(0xffdbdbdb)),
//
//
//   ),
// );
