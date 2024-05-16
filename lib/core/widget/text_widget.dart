// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ptc/resources/fonts_manager.dart';
import 'package:ptc/resources/styles_manager.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.title,
    this.fontSize,
    this.colorText,
    this.fontWeight,
    this.pTop = 0,
    this.pBottom = 0,
    this.pLeft = 0,
    this.pRight = 0,
    this.maxLines = 2,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String title;
  final TextAlign textAlign;
  final Color? colorText;
  final double? fontSize;
  final double pTop;
  final double pBottom;
  final double pLeft;
  final double pRight;
  final FontWeight? fontWeight;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: pTop,
        bottom: pBottom,
        left: pLeft,
        right: pRight,
      ),
      child: Text(
        title,
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        style: getStyle(fontWeight),
      ),
    );
  }

  TextStyle getStyle(FontWeight? fontWeight) {
    if (fontWeight == FontWeightManager.bold) {
      return getBoldStyle(color: colorText, fontSize: fontSize);
    } else if (fontWeight == FontWeightManager.light) {
      return getLightStyle(color: colorText, fontSize: fontSize);
    } else if (fontWeight == FontWeightManager.semiBold) {
      return getSemiBoldStyle(color: colorText, fontSize: fontSize);
    } else {
      return getRegularStyle(color: colorText, fontSize: fontSize);
    }
  }
}
