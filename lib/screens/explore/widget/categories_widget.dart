import 'package:flutter/material.dart';
import 'package:ptc/core/utils/extensions.dart';
import 'package:ptc/core/widget/card_widget.dart';
import 'package:ptc/core/widget/text_widget.dart';
import 'package:ptc/data/models/category_model.dart';
import 'package:ptc/resources/fonts_manager.dart';
import 'package:ptc/screens/products/products_screen.dart';

import '../../../core/utils/color_utils.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key, required this.data}) : super(key: key);

  final CategoryModel data;

  @override
  Widget build(BuildContext context) {
    final randomColor = ColorUtils.generateRandomColor();
    return InkWell(
      onTap: () => context.toScreen(screen: ProductsScreen(title: data.name)),
      child: CustomCard(
        image: data.image,
        borderColor: randomColor,
        color: randomColor.withOpacity(.2),
        subWidget: CustomTitle(
          title: data.name,
          fontSize: FontSize.s16,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
