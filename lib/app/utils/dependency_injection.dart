import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/data/provider/remote/authentication_api.dart';
import 'package:uber_test/app/data/provider/remote/order_summary_api.dart';
import 'package:uber_test/app/data/provider/remote/vehicle_api.dart';
import 'package:uber_test/app/data/repository/remote/authentication_repository.dart';
import 'package:uber_test/app/data/repository/remote/order_summary_repository.dart';
import 'package:uber_test/app/data/repository/remote/vehicle_repository.dart';

class DependencyInjection {
  static void init() {
    Get.put<Dio>(
      Dio(BaseOptions(baseUrl: '')),
    );

    //   //* providers
    Get.put<AuthenticationAPI>(AuthenticationAPI());
    Get.put<VehicleApi>(VehicleApi());
    Get.put<OrderSummaryApi>(OrderSummaryApi());

    //   //* repositories
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<VehicleRepository>(VehicleRepository());
    Get.put<OrderSummaryRepository>(OrderSummaryRepository());
  }
}
