import 'package:flutter/material.dart';
import 'package:getx_task_manager/gen/fonts.gen.dart';
import 'package:getx_task_manager/components/size_config.dart';

abstract class FontConstants {
  static const String defaultFontFamily = FontFamily.lato;
}

abstract class FontWightManager {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight bold = FontWeight.w700;
}

abstract class FontSize {
  static double c8 = 8.0 * SizeConfig.textScaleFactor;
  static double c10 = 10.0 * SizeConfig.textScaleFactor;
  static double c12 = 12.0 * SizeConfig.textScaleFactor;
  static double c14 = 14.0 * SizeConfig.textScaleFactor;
  static double c16 = 16.0 * SizeConfig.textScaleFactor;
  static double c17 = 17.0 * SizeConfig.textScaleFactor;
  static double c18 = 18.0 * SizeConfig.textScaleFactor;
  static double c20 = 20.0 * SizeConfig.textScaleFactor;
  static double c24 = 24.0 * SizeConfig.textScaleFactor;
  static double c32 = 32.0 * SizeConfig.textScaleFactor;
  static double c40 = 40.0 * SizeConfig.textScaleFactor;
  static double c48 = 48.0 * SizeConfig.textScaleFactor;
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
