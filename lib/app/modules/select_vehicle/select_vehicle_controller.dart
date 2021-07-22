import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';
import 'package:uber_test/app/data/model/local/vehicle.dart';
import 'package:uber_test/app/data/repository/remote/order_summary_repository.dart';
import 'package:uber_test/app/data/repository/remote/vehicle_repository.dart';
import 'package:uber_test/app/routes/app_route.dart';

class SelectVehicleController extends GetxController {
  final VehicleRepository _vehicleRepository = Get.find<VehicleRepository>();
  final OrderSummaryRepository _orderSummaryRepository =
      Get.find<OrderSummaryRepository>();
  final String _address = Get.arguments;
  ScrollController controller = ScrollController();
  RxBool _closeTopContainer = false.obs;
  bool get closeTopContainer => _closeTopContainer.value;

  List<Vehicle> vehicles = [];

  RxBool _showSummary = false.obs;
  bool get showSummary => _showSummary.value;

  RxBool _select = false.obs;
  bool get select => _select.value;

  RxDouble _payCount = 0.0.obs;
  RxString _valueDrow = '2547937585'.obs;

  double get payCount => _payCount.value;
  String get valueDrow => _valueDrow.value;
  String get address => _address;

  RxInt _radioBottom = 0.obs;
  int get radioBottom => _radioBottom.value;

  Rx<DateTime> _selectedDate = DateTime.now().obs;
  DateTime get selectedDate => _selectedDate.value;

  RxString _shipDate = ''.obs;
  String get shipDate => _shipDate.value;

  @override
  void onInit() {
    _init();
    controller.addListener(() {
      _closeTopContainer.value = controller.offset > 1;
    });
    super.onInit();
  }

  void onChangedDrow(String value) {
    _valueDrow.value = value;
  }

  void onChangedMax(int index) {
    vehicles[index].count = vehicles[index].count + 1;
    _costTotal();
    update();
  }

  void onChangedMin(int index) {
    if (vehicles[index].count != 0) {
      vehicles[index].count = vehicles[index].count - 1;
      _costTotal();
      update();
    }
  }

  void onChangedCount(int index, String value) {
    if (int.parse(value) >= 0) {
      vehicles[index].count = int.parse(value);
      _costTotal();
      update();
    }
  }

  void toOrderSummary() {
    _showSummary.value = true;
  }

  void toListVehicle() {
    _showSummary.value = false;
  }

  void onChangedRadioBottom(int value) {
    _radioBottom.value = value;
  }

  void onChangedSelect() {
    _select.value = !_select.value;
  }

  void onChangedDate(date) {
    _selectedDate.value = date;
    if (_selectedDate.value.day == DateTime.now().day &&
        _selectedDate.value.month == DateTime.now().month &&
        _selectedDate.value.year == DateTime.now().year) {
      final DateFormat formatter = DateFormat('hh:ss');
      _shipDate.value = "Today, " + formatter.format(_selectedDate.value);
    } else {
      final DateFormat formatter = DateFormat('yyyy-MMMM-dd, hh:ss');
      _shipDate.value = formatter.format(_selectedDate.value);
    }
  }

  void _costTotal() {
    _payCount.value = 0;
    for (var i = 0; i < vehicles.length; i++) {
      _payCount.value += (vehicles[i].cost * vehicles[i].count);
    }
  }

  Future<void> _init() async {
    try {
      final result = await _vehicleRepository.getHistory();
      vehicles = result;
      update();
      print(result);
    } catch (e) {}
    update();
  }

  void addOrderSummary() async {
    var order;
    try {
      final bool result = await _orderSummaryRepository.addOrderSummary(order);
      if (result == true) {
        Get.offAllNamed(AppRoutes.HOME);
      }
    } catch (e) {
      print(e);
    }
  }
}
