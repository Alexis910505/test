import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:uber_test/app/data/provider/remote/authentication_api.dart';

class AuthenticationRepository {
  final AuthenticationAPI _api = Get.find<AuthenticationAPI>();

  Future<String> authWithLogin({
    @required String username,
    @required String password,
  }) =>
      _api.validateWithLogin(
        username: username,
        password: password,
      );
}
