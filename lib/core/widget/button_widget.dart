import 'package:flutter/material.dart';

import '../../resources/colors_manager.dart';
import '../../resources/fonts_manager.dart';
import '../../resources/styles_manager.dart';
import '../../resources/values_manager.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.bgColor = ColorsManager.primary,
    this.titleColor = ColorsManager.white,
    this.fontWeight,
    this.paddingVertical = 2.0,
    this.overlayColor,
    this.elevation = 3,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color bgColor;
  final double elevation;
  final Color? overlayColor;
  final Color titleColor;
  final FontWeight? fontWeight;
  final double paddingVertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical,
        horizontal: AppPadding.p25,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: getRegularStyle(
            color: titleColor,
            fontSize: FontSize.s18,
            fontWeight: fontWeight,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(bgColor),
          // shadowColor: MaterialStatePropertyAll(bgColor),
          elevation: MaterialStatePropertyAll(elevation),
          overlayColor: MaterialStatePropertyAll(overlayColor),
          minimumSize: MaterialStatePropertyAll(
            Size(double.infinity, hScreen(context) * .075),
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: AppSize.s18),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s18),
            ),
          ),
        ),
      ),
    );
  }
}
//  ElevatedButton(
//         child = Text(
//           'Get Started',
//           style: getRegularStyle(
//             color: ColorsManager.white,
//             fontSize: FontSize.s18,
//           ),
//         ),
//         style = const ButtonStyle(
//           shape: MaterialStatePropertyAll(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(AppSize.s19),
//               ),
//             ),
//           ),
//           backgroundColor: MaterialStatePropertyAll(
//             ColorsManager.primary,
//           ),
//           padding: MaterialStatePropertyAll(
//             EdgeInsets.symmetric(vertical: AppSize.s18),
//           ),
//           minimumSize: MaterialStatePropertyAll<Size>(
//             Size(double.maxFinite, AppSize.s67),
//           ),
//         ),
//         onPressed = () =>
//             context.toScreenReplacement(screen: const ExploreScreen()),