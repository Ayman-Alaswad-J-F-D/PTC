// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ptc/app/app.dart';
import 'package:ptc/core/widget/grid_view_widget.dart';
import 'package:ptc/core/widget/icon_button_widget.dart';
import 'package:ptc/core/widget/text_widget.dart';
import 'package:ptc/data/models/category_model.dart';
import 'package:ptc/resources/colors_manager.dart';
import 'package:ptc/resources/values_manager.dart';

import '../../core/constants.dart';
import 'widget/add_bottom_sheet_widget.dart';
import 'widget/product_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.white,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        title: CustomTitle(title: title),
        actions: [
          CustomIcon(
            elevation: .5,
            padding: AppPadding.p2,
            borderRadius: AppSize.s8,
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              barrierColor: ColorsManager.transparent,
              constraints: BoxConstraints(
                minHeight: hScreen(context) / 3,
                maxHeight: hScreen(context) / 1.85,
              ),
              builder: (_) => const AddBottomSheet(),
            ),
          ),
          const SizedBox(width: AppSize.s15),
        ],
      ),
      body: CustomGridView(
        childAspectRatio: .65,
        children: List.generate(
          data.length,
          (index) {
            final products = CategoryModel.extractDataList(data);
            return ProductWidget(data: products[index]);
          },
        ),
      ),
    );
  }
}
