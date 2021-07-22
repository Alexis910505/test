import 'package:get/get.dart';
import 'package:uber_test/app/data/model/local/vehicle.dart';
import 'package:uber_test/app/data/provider/remote/vehicle_api.dart';

class VehicleRepository {
  final VehicleApi _api = Get.find<VehicleApi>();

  Future<List<Vehicle>> getHistory() => _api.getVehicle();
}
