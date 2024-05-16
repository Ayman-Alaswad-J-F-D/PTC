import 'package:flutter/material.dart';
import 'package:ptc/resources/fonts_manager.dart';

import 'colors_manager.dart';

TextStyle _getTextStyle(
  double? fontSize,
  FontWeight fontWeight,
  Color? color, {
  FontStyle? fontStyle,
  String fontFamily = FontConstants.fontFamily,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: fontStyle,
  );
}

//* Regular English style
TextStyle getRegularStyle({
  double? fontSize = FontSize.s16,
  FontStyle? fontStyle,
  Color? color = ColorsManager.black,
  FontWeight? fontWeight,
}) =>
    _getTextStyle(
      fontSize,
      fontWeight ?? FontWeightManager.regular,
      color,
      fontStyle: fontStyle,
    );

//* Light style
TextStyle getLightStyle({
  double? fontSize = FontSize.s13,
  FontStyle? fontStyle,
  required Color? color,
}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.light,
      color,
      fontStyle: fontStyle,
    );

//* Bold style
TextStyle getBoldStyle({
  double? fontSize = FontSize.s25,
  FontStyle? fontStyle,
  required Color? color,
}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.bold,
      color,
      fontStyle: fontStyle,
    );

//* SemiBold style
TextStyle getSemiBoldStyle({
  double? fontSize = FontSize.s30,
  FontStyle? fontStyle,
  required Color? color,
  FontWeight? fontWeight,
}) =>
    _getTextStyle(
      fontSize,
      fontWeight ?? FontWeightManager.semiBold,
      color,
      fontStyle: fontStyle,
    );
