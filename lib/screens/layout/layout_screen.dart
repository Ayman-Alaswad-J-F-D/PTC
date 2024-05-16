import 'package:flutter/material.dart';
import 'package:ptc/app/app.dart';
import 'package:ptc/resources/colors_manager.dart';
import 'package:ptc/resources/fonts_manager.dart';

import '../../resources/styles_manager.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  late int currentIndex;
  late final PageController controller;

  @override
  void initState() {
    currentIndex = 0;
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.white,
        centerTitle: true,
        scrolledUnderElevation: 20,
        title: Text(
          titles[currentIndex],
          style: getRegularStyle(fontSize: FontSize.s20),
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screen,
        onPageChanged: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          controller.jumpToPage(index);
          setState(() {});
        },
        elevation: 10,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorsManager.primary,
        unselectedItemColor: ColorsManager.black,
        // fixedColor: ColorsManager.primary,
        items: _itemsBNB,
      ),
    );
  }
}

const List<BottomNavigationBarItem> _itemsBNB = [
  BottomNavigationBarItem(
    label: 'Shop',
    icon: Icon(Icons.shopping_bag_rounded),
  ),
  BottomNavigationBarItem(
    label: 'Explor',
    icon: Icon(Icons.search_rounded),
  ),
  BottomNavigationBarItem(
    label: 'Cart',
    icon: Icon(Icons.card_travel_outlined),
  ),
  BottomNavigationBarItem(
    label: 'Favourite',
    icon: Icon(Icons.favorite_border_rounded),
  ),
  BottomNavigationBarItem(
    label: 'Account',
    icon: Icon(Icons.account_circle_rounded),
  ),
];
