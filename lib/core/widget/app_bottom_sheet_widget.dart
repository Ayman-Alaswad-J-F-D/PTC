// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ptc/core/utils/extensions.dart';
import 'package:ptc/core/widget/cancel_icon_widget.dart';

import '../../../core/widget/text_widget.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/fonts_manager.dart';
import '../../../resources/values_manager.dart';

class AppBottomSheetWidget extends StatelessWidget {
  const AppBottomSheetWidget({
    Key? key,
    required this.titleBottomSheet,
    required this.optionOne,
    required this.optionTwo,
    required this.optionThree,
    required this.optionFour,
    required this.button,
    this.bgColor = ColorsManager.white12,
    this.hintText,
  }) : super(key: key);

  final String titleBottomSheet;
  final Color bgColor;
  final Widget optionOne;
  final Widget optionTwo;
  final Widget optionThree;
  final Widget optionFour;
  final Widget button;
  final Widget? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: AppPadding.p18),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              CustomTitle(
                title: titleBottomSheet,
                fontSize: FontSize.s25,
              ),
              const Spacer(flex: 8),
              CancelIcon(
                iconColor: ColorsManager.black,
                onPressed: () => context.backScreen(),
              ),
              const SizedBox(width: 10),
            ],
          ),
          Divider(thickness: 3, color: ColorsManager.grey200),
          optionOne,
          Divider(indent: 25, endIndent: 25, color: ColorsManager.grey300),
          optionTwo,
          Divider(indent: 25, endIndent: 25, color: ColorsManager.grey300),
          optionThree,
          Divider(indent: 25, endIndent: 25, color: ColorsManager.grey300),
          optionFour,
          Divider(indent: 25, endIndent: 25, color: ColorsManager.grey300),
          hintText ?? const SizedBox(height: AppSize.s15),
          const SizedBox(height: 20),
          button,
        ],
      ),
    );
  }
}

// class CheckoutOption extends StatelessWidget {
//   const CheckoutOption({
//     Key? key,
//     required this.title,
//     required this.option,
//     required this.action,
//   }) : super(key: key);

//   final String title;
//   final Widget option;
//   final VoidCallback action;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: action,
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: AppPadding.p25,
//           right: AppPadding.p15,
//           bottom: AppPadding.p5,
//           top: AppPadding.p5,
//         ),
//         child: Row(
//           children: [
//             CustomTitle(
//               title: title,
//               fontSize: FontSize.s18,
//               colorText: ColorsManager.grey,
//             ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.all(AppPadding.p5),
//               child: Row(
//                 children: [
//                   option,
//                   const SizedBox(width: AppSize.s10),
//                   const Icon(
//                     Icons.arrow_forward_ios_rounded,
//                     color: ColorsManager.black,
//                     size: AppSize.s21,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
