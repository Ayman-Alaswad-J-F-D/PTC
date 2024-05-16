import 'package:flutter/material.dart';
import 'package:ptc/app/app.dart';
import 'package:ptc/core/widget/grid_view_widget.dart';

import '../../data/models/category_model.dart';
import 'widget/categories_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomGridView(
      children: List.generate(
        data.length,
        (index) {
          final categories = CategoryModel.extractDataList(data);
          return CategoriesWidget(data: categories[index]);
        },
      ),
    );
  }
}
