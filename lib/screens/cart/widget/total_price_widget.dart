import 'package:flutter/material.dart';
import 'package:ptc/core/widget/text_widget.dart';

import '../../../resources/colors_manager.dart';
import '../../../resources/fonts_manager.dart';
import '../../../resources/values_manager.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.black12,
        borderRadius: BorderRadius.circular(AppSize.s6),
      ),
      child: const Padding(
        padding: EdgeInsets.all(AppPadding.p5),
        child: CustomTitle(
          title: '\$12.96',
          fontSize: FontSize.s13,
          colorText: ColorsManager.white,
        ),
      ),
    );
  }
}
