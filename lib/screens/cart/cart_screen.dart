import 'package:flutter/material.dart';
import 'package:ptc/core/constants.dart';
import 'package:ptc/core/widget/button_widget.dart';
import 'package:ptc/resources/colors_manager.dart';
import 'package:ptc/resources/values_manager.dart';

import 'widget/cart_item_widget.dart';
import 'widget/chekout_bottom_sheet_widget.dart';
import 'widget/total_price_widget.dart';

//* Add Logic
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.separated(
          padding: EdgeInsets.only(bottom: hScreen(context) * .085),
          itemCount: 12,
          separatorBuilder: (_, __) => const Divider(
            indent: AppPadding.p25,
            endIndent: AppPadding.p25,
          ),
          itemBuilder: (_, __) => const CartItemWidget(),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Stack(
            children: [
              CustomButton(
                title: 'Go to Checkout',
                onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  barrierColor: ColorsManager.black26,
                  constraints: BoxConstraints(
                    minHeight: hScreen(context) / 2,
                    maxHeight: hScreen(context) / 1.7,
                  ),
                  builder: (_) => const CheckoutBottomSheetWidget(),
                ),
              ),
              const Positioned(
                right: AppMargin.m40,
                left: 0,
                top: 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TotalPriceWidget(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//* Useing Later
class DropDownList extends StatelessWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: const SizedBox(),
      iconEnabledColor: ColorsManager.primary,
      // style: Theme.of(context).textTheme.bodySmall,

      icon: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Theme.of(context).iconTheme.color,
      ),
      value: "M1",
      onChanged: (newValue) {
        // dropdownValue = newValue!;
        // cubit.changeLanguage(lang: newValue);
      },
      items: const [
        DropdownMenuItem<String>(
          value: "M1",
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text("Select Method"),
          ),
        ),
        DropdownMenuItem<String>(
          value: "M2",
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text("Data"),
          ),
        ),
      ],
    );
  }
}
