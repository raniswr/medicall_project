import 'package:get/get.dart';

import '../controllers/doctor_page_controller.dart';

class DoctorPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorPageController>(
      () => DoctorPageController(),
    );
  }
}
