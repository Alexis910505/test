import 'package:get/get.dart';
import 'package:uber_test/app/data/repository/remote/authentication_repository.dart';
import 'package:uber_test/app/routes/app_route.dart';

class LoginController extends GetxController {
  final _repsitory = Get.find<AuthenticationRepository>();

  RxBool _error = false.obs;
  RxString _mail = ''.obs;
  RxString _pasword = ''.obs;

  bool get error => _error.value;
  String get mail => _mail.value;
  String get pasword => _pasword.value;

  void onChangedMail(String value) {
    _mail.value = value;
  }

  void onChangedPaswor(String value) {
    _pasword.value = value;
  }

  Future<void> login() async {
    try {
      final result = await _repsitory.authWithLogin(
          username: _mail.value, password: _pasword.value);
      _error.value = false;
      if (result != null) {
        Get.offAllNamed(AppRoutes.HOME, arguments: result);
      }
    } catch (e) {
      print(e);
    }
    print(_mail.value);
    print(_pasword.value);
  }
}
