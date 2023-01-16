import 'package:get/get.dart';

class DoctorPageController extends GetxController {
  var pressedOrder = true;
  changeOrder() {
    if (pressedOrder) {
      pressedOrder = false;
    } else {
      pressedOrder = true;
    }
    update();
  }

  var pressedSelling = true;
  changeSelling() {
    if (pressedSelling) {
      pressedSelling = false;
    } else {
      pressedSelling = true;
    }
    update();
  }

  var pressedQuotation = true;
  changeQuotation() {
    if (pressedQuotation) {
      pressedQuotation = false;
    } else {
      pressedQuotation = true;
    }
    update();
  }

  var pressedApp = true;
  changeApp() {
    if (pressedApp) {
      pressedApp = false;
    } else {
      pressedApp = true;
    }
    update();
  }
}
