import 'package:flutter/material.dart';
import 'package:ptc/core/utils/extensions.dart';
import 'package:ptc/core/widget/text_widget.dart';
import 'package:ptc/resources/assets_manager.dart';
import 'package:ptc/resources/colors_manager.dart';
import 'package:ptc/resources/fonts_manager.dart';
import 'package:ptc/resources/values_manager.dart';
import 'package:ptc/screens/layout/layout_screen.dart';

import '../../core/widget/button_widget.dart';
import 'widget/logo.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImageAssets.onbording,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Flexible(
                flex: 2,
                child: Logo(),
              ),
              const SizedBox(height: AppMargin.m20),
              const Flexible(
                flex: 2,
                child: CustomTitle(
                  title: 'Welcome\nto our store',
                  textAlign: TextAlign.center,
                  colorText: ColorsManager.white,
                  fontSize: FontSize.s48,
                ),
              ),
              const Flexible(
                flex: 2,
                child: CustomTitle(
                  title: 'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  fontSize: FontSize.s16,
                  colorText: Colors.white,
                  fontWeight: FontWeightManager.light,
                ),
              ),
              const SizedBox(height: AppMargin.m20),
              Flexible(
                flex: 5,
                child: CustomButton(
                  title: 'Get Started',
                  paddingVertical: AppPadding.p12,
                  onPressed: () => context.toScreenReplacement(
                    screen: const LayoutScreen(),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
