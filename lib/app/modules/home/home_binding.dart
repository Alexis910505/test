import 'package:get/get.dart';
import 'package:uber_test/app/modules/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.create(() => HomeController());
  }
}
