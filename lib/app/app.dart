import 'package:flutter/material.dart';
import 'package:ptc/resources/assets_manager.dart';
import 'package:ptc/resources/colors_manager.dart';
import 'package:ptc/screens/cart/cart_screen.dart';
import 'package:ptc/screens/explore/explore_screen.dart';
import 'package:ptc/screens/splash_screen.dart';

class PTCApp extends StatelessWidget {
  const PTCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.primary,
        ),
      ),
      // home: const LayoutScreen(),
      home: const SplashScreen(),
    );
  }
}

List<Widget> screen = [
  const ExploreScreen(),
  const CartScreen(),
];

List<String> titles = [
  'Find Products',
  'Beverages',
  'My Cart',
  'Favourite',
  'Account',
];

List data = <Map<String, dynamic>>[
  {
    'name': 'Frash Fruits & Vegetable',
    'image': ImageAssets.vegetable,
  },
  {
    'name': 'Cooking Oil & Ghee',
    'image': ImageAssets.oil,
  },
  {
    'name': 'Meat & Fish',
    'image': ImageAssets.fish,
  },
  {
    'name': 'Bakery & Snacks',
    'image': ImageAssets.bakery,
  },
  {
    'name': 'Dairy & Eggs',
    'image': ImageAssets.eggs,
  },
  {
    'name': 'Beverages',
    'image': ImageAssets.beverages,
  },
  {
    'name': 'Frash Fruits & Vegetable',
    'image': ImageAssets.vegetable,
  },
  {
    'name': 'Frash Fruits & Vegetable',
    'image': ImageAssets.vegetable,
  },
];
