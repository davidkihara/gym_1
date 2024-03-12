import 'package:flutter/material.dart';

class AppDimens {
  static const double menuMaxNeededWidth = 304;
  static const double menuRowHeight = 74;
  static const double menuIconSize = 32;
  static const double menuDocumentationIconSize = 44;
  static const double menuTextSize = 20;

  static const double chartBoxMinWidth = 350;

  static const double defaultRadius = 8;
  static const double chartSamplesSpace = 32.0;
  static const double chartSamplesMinWidth = 350;
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}