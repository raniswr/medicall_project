import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/widgets/lancer_image.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const AppImage(asset: Assets.appLogo, width: double.infinity).paddingSymmetric(horizontal: 100),
      ),
    );
  }
}
