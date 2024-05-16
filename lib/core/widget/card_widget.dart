// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ptc/resources/colors_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/values_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    this.color = ColorsManager.white,
    this.borderColor,
    this.elevation = 0,
    this.flexImage = 2,
    required this.image,
    required this.subWidget,
    // this.axisAlignment = Axis.vertical,
  }) : super(key: key);

  final Color color;
  final Color? borderColor;
  final double elevation;
  final int flexImage;
  final String image;
  final Widget subWidget;
  // final Axis axisAlignment;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? color, width: 1),
        borderRadius: BorderRadius.circular(AppMargin.m18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: flexImage,
            child: Image.asset(
              image,
              errorBuilder: (context, error, stackTrace) =>
                  SvgPicture.asset(SvgAssets.logo),
            ),
          ),
          Expanded(child: subWidget),
        ],
      ),
    );
  }
}
