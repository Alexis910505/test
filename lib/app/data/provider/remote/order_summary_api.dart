import 'package:dio/dio.dart';
import 'package:get/get.dart' as geT;

class OrderSummaryApi {
  final Dio _dio = geT.Get.find<Dio>();

  Future<bool> addOrderSummary(order) async {
    try {
      // final Response response = await _dio.post(
      //   '',
      //   data: {},
      // );
      return true;
    } catch (e) {
      print(e);
    }
  }
}
