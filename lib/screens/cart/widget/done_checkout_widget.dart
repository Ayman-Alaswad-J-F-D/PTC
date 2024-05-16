import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ptc/core/constants.dart';
import 'package:ptc/core/utils/extensions.dart';
import 'package:ptc/core/widget/button_widget.dart';
import 'package:ptc/core/widget/text_widget.dart';
import 'package:ptc/resources/assets_manager.dart';
import 'package:ptc/resources/colors_manager.dart';
import 'package:ptc/resources/fonts_manager.dart';
import 'package:ptc/resources/values_manager.dart';

class DoneCheckoutWidget extends StatelessWidget {
  const DoneCheckoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          right: 0,
          bottom: hScreen(context) * .7,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: AppSize.s20,
              sigmaY: AppSize.s20,
            ),
            child: Image.asset(
              ImageAssets.imageOpa2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          top: hScreen(context) * .7,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: AppSize.s20,
              sigmaY: AppSize.s20,
            ),
            child: Image.asset(
              ImageAssets.imageOpa1,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(gradient: getLinearGradient()),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Lottie.asset(JsonAssets.done, repeat: false),
              const Flexible(
                flex: 3,
                child: CustomTitle(
                  title: "You Order has been accepted",
                  fontSize: FontSize.s27,
                  pBottom: AppPadding.p5,
                  textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                flex: 2,
                child: SizedBox(
                  width: wScreen(context) * .7,
                  height: double.infinity,
                  child: CustomTitle(
                    title:
                        "Your items has been piaccd and is on it's way to being processed",
                    textAlign: TextAlign.center,
                    colorText: ColorsManager.grey,
                  ),
                ),
              ),
              const Spacer(flex: 4),
              CustomButton(
                title: "Track Order",
                onPressed: () {},
              ),
              CustomButton(
                title: "Back to home",
                paddingVertical: AppPadding.p8,
                bgColor: ColorsManager.transparent,
                overlayColor: ColorsManager.transparent,
                titleColor: ColorsManager.black,
                elevation: 0,
                onPressed: () => context.backScreen(),
              ),
              // const SizedBox(height: AppSize.s20),
            ],
          ),
        ),
      ],
    );
  }
}

LinearGradient getLinearGradient() => const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorsManager.white60,
        ColorsManager.white,
        ColorsManager.white,
        ColorsManager.white,
        ColorsManager.white,
        ColorsManager.white60,
      ],
    );
