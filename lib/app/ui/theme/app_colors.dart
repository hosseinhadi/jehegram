import 'package:flutter/material.dart';

export 'app_colors.dart';

abstract class AppColors {
  static const white = Color(0xfff9f9f9);
  static const textGrayColorDark = Color(0xff656565);
  static const textGrayColorLight = Color(0xffb4b4b4);
  static const cardColorLight = Color(0xfffbfbfb);

  static const accent = Color(0xfff1ab87);

  static const mainColor = Color(0xffb71c1c);

  static var mainColorLight = Color(0xfff05545);

  static var mainColorDark = Color.lerp(AppColors.mainColor, Colors.black, 0.5);

  static var shadowColor = Colors.black38;

  static var black = Colors.black87;
}
