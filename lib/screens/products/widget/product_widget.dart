import 'package:flutter/material.dart';

import '../../../core/widget/card_widget.dart';
import '../../../core/widget/icon_button_widget.dart';
import '../../../core/widget/text_widget.dart';
import '../../../data/models/category_model.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/fonts_manager.dart';
import '../../../resources/values_manager.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key, required this.data}) : super(key: key);

  final CategoryModel data;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      flexImage: 1,
      image: data.image,
      borderColor: ColorsManager.black12,
      subWidget: Padding(
        padding: const EdgeInsets.only(left: AppPadding.p14),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: CustomTitle(
                  title: 'Diet Cokec',
                  fontSize: FontSize.s18,
                  maxLines: 1,
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: 75,
                  child: CustomTitle(
                    title: '355ml, Price',
                    fontSize: FontSize.s14,
                    colorText: ColorsManager.grey,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: CustomTitle(
                        title: '\$1.50',
                        fontSize: FontSize.s18,
                      ),
                    ),
                    // const Spacer(),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: AppPadding.p10),
                        child: CustomIcon(onTap: () {}),
                      ),
                    ),
                    // const SizedBox(width: AppSize.s10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
