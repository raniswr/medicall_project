import 'dart:developer';
import 'package:get/get.dart';
import 'package:medicall_project/app/routes/app_pages.dart';

class SplashPageController extends GetxController {
  @override
  void onReady() {
    log("Splash...");
    Future.delayed(const Duration(seconds: 2)).then((value) => Get.offAndToNamed(Routes.LOGIN_PAGE));
    super.onReady();
  }
}
