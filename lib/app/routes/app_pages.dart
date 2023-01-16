import 'package:get/route_manager.dart';
import 'package:medicall_project/app/modules/loginPage/bindings/login_page_binding.dart';
import 'package:medicall_project/app/modules/doctorPage/bindings/doctor_page_binding.dart';
import 'package:medicall_project/app/modules/doctorPage/views/doctor_page_view.dart';
import 'package:medicall_project/app/modules/rootPage/bindings/root_page_binding.dart';
import 'package:medicall_project/app/modules/rootPage/views/root_page_view.dart';
import '../modules/loginPage/views/login_page_view.dart';
import '../modules/splashPage/bindings/splash_page_binding.dart';
import '../modules/splashPage/views/splash_page_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => const SplashPageView(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_PAGE,
      page: () => const RootPageView(),
      binding: RootPageBinding(),
    ),
    GetPage(
      name: _Paths.DOCTOR_PAGE,
      page: () => const DoctorPageView(),
      binding: DoctorPageBinding(),
    ),
  ];
}
