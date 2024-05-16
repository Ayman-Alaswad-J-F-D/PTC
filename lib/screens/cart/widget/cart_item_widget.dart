import 'package:flutter/cupertino.dart';

import '../../../core/constants.dart';
import '../../../core/widget/cancel_icon_widget.dart';
import '../../../core/widget/icon_button_widget.dart';
import '../../../core/widget/text_widget.dart';
import '../../../resources/assets_manager.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/fonts_manager.dart';
import '../../../resources/values_manager.dart';

//* Add Logic
class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: hScreen(context) * .18,
      padding: const EdgeInsets.only(
        bottom: AppPadding.p18,
        top: AppPadding.p18,
        left: AppPadding.p20,
        right: AppPadding.p10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(child: Image.asset(ImageAssets.bakery)),
          ),
          const SizedBox(width: AppSize.s15),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTitle(
                  title: "Bell Papper Red",
                  fontSize: FontSize.s16,
                  pBottom: AppPadding.p2,
                  fontWeight: FontWeightManager.bold,
                ),
                CustomTitle(
                  title: "1kg, Price",
                  colorText: ColorsManager.grey,
                ),
                const SizedBox(height: AppSize.s12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomIcon(
                      elevation: 0,
                      icon: CupertinoIcons.minus,
                      color: ColorsManager.white,
                      colorIcon: ColorsManager.black38,
                      colorBorder: ColorsManager.black12,
                      onTap: () {},
                    ),
                    const CustomTitle(
                      title: "1",
                      pLeft: AppPadding.p12,
                      pRight: AppPadding.p12,
                    ),
                    CustomIcon(
                      elevation: 0,
                      color: ColorsManager.white,
                      colorIcon: ColorsManager.primary,
                      colorBorder: ColorsManager.black12,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CancelIcon(onPressed: () {}),
                const SizedBox(height: AppSize.s32),
                const CustomTitle(
                  title: "\$4.99 ",
                  fontSize: FontSize.s16,
                  fontWeight: FontWeight.bold,
                  pRight: AppPadding.p14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
