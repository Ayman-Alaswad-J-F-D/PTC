import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc/core/utils/extensions.dart';
import 'package:ptc/resources/assets_manager.dart';
import 'package:ptc/resources/colors_manager.dart';

import '../resources/values_manager.dart';
import 'onbording/onbording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(
      AppDuration.sec2,
      () => context.toScreenReplacement(screen: const OnbordingScreen()),
    );
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorsManager.transparent,
          systemNavigationBarColor: ColorsManager.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          // systemNavigationBarContrastEnforced: true,
        ),
      ),
      backgroundColor: ColorsManager.primary,
      body: Center(child: Image.asset(ImageAssets.splash)),
    );
  }
}
