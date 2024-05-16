import 'package:flutter/material.dart';
import 'package:ptc/core/utils/extensions.dart';
import 'package:ptc/screens/cart/widget/done_checkout_widget.dart';

import '../../../core/widget/app_bottom_sheet_widget.dart';
import '../../../core/widget/button_widget.dart';
import '../../../core/widget/text_widget.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/fonts_manager.dart';
import '../../../resources/values_manager.dart';

class CheckoutBottomSheetWidget extends StatelessWidget {
  const CheckoutBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheetWidget(
      titleBottomSheet: 'Checkout',
      optionOne: CheckoutOption(
        title: "Delivery",
        option: const CustomTitle(
          title: "Select Method",
          fontSize: FontSize.s18,
        ),
        action: () {},
      ),
      optionTwo: CheckoutOption(
        title: "Pament",
        option: const Icon(Icons.payment),
        action: () {},
      ),
      optionThree: CheckoutOption(
        title: "Promo Code",
        option: const CustomTitle(
          title: "Pick discount",
          fontSize: FontSize.s18,
        ),
        action: () {},
      ),
      optionFour: CheckoutOption(
        title: "Total Cost",
        option: const CustomTitle(
          title: "\$13.97",
          fontSize: FontSize.s18,
        ),
        action: () {},
      ),
      hintText: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p25,
          right: AppPadding.p35,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: CustomTitle(
                title:
                    'By placiment an order you agree to our Trems And Conditions Hom',
                colorText: ColorsManager.grey,
                fontSize: FontSize.s12,
                maxLines: 3,
              ),
            ),
            Flexible(
              child: CustomTitle(
                title: 'Profile',
                fontSize: FontSize.s14,
                colorText: ColorsManager.grey,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
          ],
        ),
      ),
      button: CustomButton(
        paddingVertical: AppPadding.p20,
        title: "Place Order",
        onPressed: () {
          context.backScreen();
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            constraints: const BoxConstraints.expand(),
            barrierColor: ColorsManager.transparent,
            backgroundColor: ColorsManager.white,
            builder: (context) => const DoneCheckoutWidget(),
          );
        },
      ),
    );
  }
}

class CheckoutOption extends StatelessWidget {
  const CheckoutOption({
    Key? key,
    required this.title,
    required this.option,
    required this.action,
  }) : super(key: key);

  final String title;
  final Widget option;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p25,
          right: AppPadding.p15,
          bottom: AppPadding.p5,
          top: AppPadding.p5,
        ),
        child: Row(
          children: [
            CustomTitle(
              title: title,
              fontSize: FontSize.s18,
              colorText: ColorsManager.grey,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p5),
              child: Row(
                children: [
                  option,
                  const SizedBox(width: AppSize.s10),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorsManager.black,
                    size: AppSize.s21,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
