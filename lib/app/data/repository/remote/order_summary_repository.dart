import 'package:get/get.dart';
import 'package:uber_test/app/data/provider/remote/order_summary_api.dart';

class OrderSummaryRepository {
  final OrderSummaryApi _api = Get.find<OrderSummaryApi>();

  Future<bool> addOrderSummary(order) => _api.addOrderSummary(order);
}
