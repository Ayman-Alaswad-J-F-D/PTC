// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../resources/colors_manager.dart';
import '../../resources/values_manager.dart';

class CancelIcon extends StatelessWidget {
  const CancelIcon({
    Key? key,
    this.iconColor = ColorsManager.black38,
    this.iconSize = AppSize.s28,
    required this.onPressed,
  }) : super(key: key);

  final Color iconColor;
  final double iconSize;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.close_rounded,
        size: iconSize,
        color: iconColor,
      ),
      onPressed: onPressed,
    );
  }
}
