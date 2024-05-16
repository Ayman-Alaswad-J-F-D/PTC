// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../resources/colors_manager.dart';
import '../../resources/values_manager.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.onTap,
    this.borderRadius = AppSize.s17,
    this.padding = AppPadding.p10,
    this.iconSize = AppSize.s25,
    this.elevation = 3,
    this.icon = Icons.add,
    this.color = ColorsManager.primary,
    this.colorIcon = ColorsManager.white,
    this.colorBorder,
    this.widthBorder = 1.0,
  }) : super(key: key);

  final VoidCallback onTap;
  final double borderRadius;
  final double padding;
  final double iconSize;
  final double elevation;
  final IconData icon;
  final Color color;
  final Color colorIcon;
  final Color? colorBorder;
  final double widthBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius - 2),
      highlightColor: color.withOpacity(.2),
      child: Card(
        color: color,
        elevation: elevation,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Icon(icon, size: iconSize, color: colorIcon),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: widthBorder,
            color: colorBorder ?? ColorsManager.primary,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
