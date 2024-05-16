import 'package:flutter/material.dart';
import 'package:ptc/resources/values_manager.dart';

extension NavigatorPush on BuildContext {
  // * Navigation Push With Fade Animation Trasition

  toScreen({
    required Widget screen,
    Duration duration = AppDuration.sec1,
  }) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => screen),
      // FadeAnimationTrasition(page: screen, duration: duration),
    );
  }

  void backScreen({dynamic result}) => Navigator.pop(this, result);

  toScreenReplacement({
    required Widget screen,
    Duration duration = AppDuration.sec1,
  }) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => screen),
      // FadeAnimationTrasition(page: screen, duration: duration),
    );
  }

  // * Navigation Push Named

  toScreenNamed({required String screen}) => Navigator.pushNamed(this, screen);

  toScreenReplacNamed({required String screen}) =>
      Navigator.pushReplacementNamed(this, screen);
}

// extension NonNullString on String? {
//   String orEmpty() {
//     if (this == null) {
//       return Constants.empty;
//     } else {
//       return this!;
//     }
//   }
// }

// extension NonNullInteger on int? {
//   int orZero() {
//     if (this == null) {
//       return Constants.zero;
//     } else {
//       return this!;
//     }
//   }
// }

extension FadeInExtension on Widget {
  Widget fadeIn() {
    return FadeTransition(
      opacity: const AlwaysStoppedAnimation(0),
      child: Opacity(
        opacity: 1,
        child: this,
        // duration: duration,
      ),
    );
  }
}
