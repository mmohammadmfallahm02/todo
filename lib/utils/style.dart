import 'package:flutter/material.dart';
import 'package:getx_task_manager/gen/fonts.gen.dart';

abstract class FontConstants {
  static const String defaultFontFamily = FontFamily.lato;
}

abstract class FontWightManager {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight bold = FontWeight.w700;
}

abstract class FontSize {
  static double c8 = 8.0;
  static double c10 = 10.0;
  static double c12 = 12.0;
  static double c14 = 14.0;
  static double c16 = 16.0;
  static double c17 = 17.0;
  static double c18 = 18.0;
  static double c20 = 20.0;
  static double c24 = 24.0;
  static double c32 = 32.0;
  static double c40 = 40.0;
  static double c48 = 48.0;
}

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize);
}

class MyDefaultTextStyle {
  MyDefaultTextStyle._();

  // default regular text style
  static TextStyle getRegularStyle(
      {double fontSize = 12, required Color color}) {
    return _getTextStyle(fontSize, FontConstants.defaultFontFamily,
        FontWightManager.regular, color);
  }

  // default bold text style

  static TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
    return _getTextStyle(fontSize, FontConstants.defaultFontFamily,
        FontWightManager.bold, color);
  }
}