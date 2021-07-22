import 'package:get/get.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';

class SelectVehicleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectVehicleController());
  }
}
