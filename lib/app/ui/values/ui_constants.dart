import 'package:flutter/cupertino.dart';

class UIConstants {
  static const double borderRadiusValue = 10;
  static BorderRadius borderRadius = BorderRadius.circular(10);

  static const innerScrollViewPaddingPhone =
      EdgeInsets.symmetric(vertical: 15, horizontal: 20);
  static const innerScrollViewPaddingDesktop =
      EdgeInsets.symmetric(vertical: 15, horizontal: 100);

  static const double sideNavbarWidth = 50;

  static const innerScrollViewPaddingTablet =
      EdgeInsets.symmetric(vertical: 15, horizontal: 60);

  static const double borderWidth = 1;

  static const double innerContainerPaddingValue = 5;

  static const double blurIntensity = 25;

  static const double outerContainerPaddingValue = 5;

  static const EdgeInsets innerContainerPadding =
      EdgeInsets.all(innerContainerPaddingValue);

  static const EdgeInsets outerContainerPadding =
      EdgeInsets.all(outerContainerPaddingValue);

  static const iconBorderRadiusValue = 25.0;
  static final iconBorderRadius = BorderRadius.circular(iconBorderRadiusValue);
}
