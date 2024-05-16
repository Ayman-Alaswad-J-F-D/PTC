import 'dart:math';

import 'package:flutter/material.dart';

import '../../resources/colors_manager.dart';

class ColorUtils {
  static Color generateRandomColor() {
    final nextColor = ColorsManager.productBackgroundColors.length;
    return ColorsManager.productBackgroundColors[Random().nextInt(nextColor)];
  }
}
