import 'package:dio/dio.dart';
import 'package:get/get.dart' as geT;
import 'package:uber_test/app/data/model/local/vehicle.dart';

class VehicleApi {
  final Dio _dio = geT.Get.find<Dio>();

  Future<List<Vehicle>> getVehicle() async {
    try {
      // final Response response = await _dio.get(
      //   '',
      //   options: Options(headers: {'x-auth-token': 'asasasasa'}),
      // );
      return [
        Vehicle(image: 'assets/car.png', trademark: 'Coupe', cost: 35.98),
        Vehicle(image: 'assets/car.png', trademark: 'Sedan', cost: 21.55),
        Vehicle(image: 'assets/car.png', trademark: 'SUV', cost: 26.89),
        Vehicle(image: 'assets/car.png', trademark: 'SUV', cost: 26.89),
        Vehicle(image: 'assets/car.png', trademark: 'Coupe', cost: 35.98),
        Vehicle(image: 'assets/car.png', trademark: 'Sedan', cost: 21.55),
        Vehicle(image: 'assets/car.png', trademark: 'Sedan', cost: 21.55),
        Vehicle(image: 'assets/car.png', trademark: 'SUV', cost: 26.89),
        Vehicle(image: 'assets/car.png', trademark: 'Coupe', cost: 35.98),
        Vehicle(image: 'assets/car.png', trademark: 'SUV', cost: 26.89),
        Vehicle(image: 'assets/car.png', trademark: 'Sedan', cost: 21.55),
        Vehicle(image: 'assets/car.png', trademark: 'SUV', cost: 26.89),
        Vehicle(image: 'assets/car.png', trademark: 'Coupe', cost: 35.98),
        Vehicle(image: 'assets/car.png', trademark: 'SUV', cost: 26.89),
      ];
    } catch (e) {
      print(e);
    }
  }
}
