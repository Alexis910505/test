import 'package:get/get.dart';
import 'package:uber_test/app/modules/home/home_binding.dart';
import 'package:uber_test/app/modules/home/home_page.dart';
import 'package:uber_test/app/modules/login/login_binding.dart';
import 'package:uber_test/app/modules/login/login_page.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_binding.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_page.dart';
import 'package:uber_test/app/modules/splash/splash_binding.dart';
import 'package:uber_test/app/modules/splash/splash_page.dart';
import 'package:uber_test/app/routes/app_route.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SELECTVEHICLE,
      page: () => SelectVehiclePage(),
      binding: SelectVehicleBinding(),
    ),
  ];
}
