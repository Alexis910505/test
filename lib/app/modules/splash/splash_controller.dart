import 'package:get/get.dart';
import 'package:uber_test/app/routes/app_route.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    _init();
    super.onReady();
  }

  _init() async {
    try {
      await Future.delayed(Duration(seconds: 2));
    } catch (e) {
      print(e);
    }
    Get.offAllNamed(AppRoutes.LOGIN);
  }
}
