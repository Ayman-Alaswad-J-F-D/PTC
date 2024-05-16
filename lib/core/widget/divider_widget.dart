// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  }) : super(key: key);

  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color,
      indent: indent,
      endIndent: endIndent,
      thickness: thickness,
    );
  }
}
