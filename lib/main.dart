import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/splash/splash_binding.dart';
import 'package:uber_test/app/modules/splash/splash_page.dart';
import 'package:uber_test/app/routes/app_pages.dart';
import 'package:uber_test/app/utils/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(CarScrubbing());
}

class CarScrubbing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Car Scrubbing',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
