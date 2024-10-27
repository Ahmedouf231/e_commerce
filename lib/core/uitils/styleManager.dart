import 'package:e_commerce/core/uitils/fontManager.dart';
import 'package:flutter/material.dart';

TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getLightStyle(
    {double fontSize = FontSize.s12,
    fontWeight = FontWeightManager.light,
    required Color color}) {
  return getTextStyle(fontSize, fontWeight, color);
}

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12,
    fontWeight = FontWeightManager.regular,
    required Color color}) {
  return getTextStyle(fontSize, fontWeight, color);
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12,
    fontWeight = FontWeightManager.medium,
    required Color color}) {
  return getTextStyle(fontSize, fontWeight, color);
}

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12,
    fontWeight = FontWeightManager.bold,
    required Color color}) {
  return getTextStyle(fontSize, fontWeight, color);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12,
    fontWeight = FontWeightManager.semiBold,
    required Color color}) {
  return getTextStyle(fontSize, fontWeight, color);
}
