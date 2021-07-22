import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString _name = ''.obs;
  String get name => _name.value;

  @override
  void onInit() {
    _name.value = Get.arguments;
    super.onInit();
  }

  List<String> _address = [
    '6272 McIntosh Road, Sarasota, FL, USA',
    '4372 Pacific Coast Highway, Long Beach, CA, USA',
    '6272 McIntosh Road, Sarasota, FL, USA',
    '6272 McIntosh Road, Sarasota, FL, USA',
    '6272 McIntosh Road, Sarasota, FL, USA',
    '6272 Pacific Coast Highway, Long Beach, CA, USA',
    '6272 McIntosh Road, Sarasota, FL, USA',
    '6272 McIntosh Road, Sarasota, FL, USA'
  ];
  List<String> get address => _address;
}
