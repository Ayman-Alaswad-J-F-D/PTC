// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
    required this.children,
    this.childAspectRatio = 1.0,
  }) : super(key: key);

  final List<Widget> children;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(
        top: AppPadding.p12,
        left: AppPadding.p16,
        right: AppPadding.p16,
      ),
      childAspectRatio: childAspectRatio,
      crossAxisCount: AppSize.s2,
      mainAxisSpacing: AppMargin.m12,
      crossAxisSpacing: AppPadding.p12,
      children: children,
    );
  }
}
