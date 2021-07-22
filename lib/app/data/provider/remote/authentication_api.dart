import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:get/get.dart' as geT;

class AuthenticationAPI {
  final Dio _dio = geT.Get.find<Dio>();

  Future<String> validateWithLogin({
    @required String username,
    @required String password,
  }) async {
    String name;
    try {
      // final Response response = await _dio.post(
      //   '',
      //   data: {
      //     "username": username,
      //     "password": password,
      //   },
      // );
      if (username.length != 0 && password.length != 0) {
        name = username;
      }
      return name;
    } catch (e) {
      print(e);
    }
  }
}
