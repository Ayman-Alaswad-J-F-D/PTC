import 'package:flutter/material.dart';

import '../../../core/widget/app_bottom_sheet_widget.dart';
import '../../../core/widget/button_widget.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/fonts_manager.dart';
import '../../../resources/styles_manager.dart';
import '../../../resources/values_manager.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheetWidget(
      titleBottomSheet: 'Add',
      optionOne: const CustomTextField(label: 'Name'),
      optionTwo: const CustomTextField(label: 'Description'),
      optionThree: const CustomTextField(label: 'Price'),
      optionFour: const CustomTextField(label: 'Image'),
      button: CustomButton(
        title: 'Add Item',
        onPressed: () {},
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p12,
        horizontal: AppPadding.p25,
      ),
      child: TextField(
        decoration: InputDecoration.collapsed(
          hintText: label,
          hintStyle: getSemiBoldStyle(
            color: ColorsManager.black38,
            fontSize: FontSize.s17,
          ),
        ),
      ),
    );
  }
}
