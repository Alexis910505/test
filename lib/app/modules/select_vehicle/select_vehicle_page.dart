import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/bottom_sheet_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/list_car_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/order_summary_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';
import 'package:uber_test/app/routes/app_route.dart';
import 'package:uber_test/app/theme/colors.dart';

class SelectVehiclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.3;
    return GetBuilder<SelectVehicleController>(
      builder: (_) => Scaffold(
        bottomSheet: BottomSheetWidget(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/map.png'), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () => _.showSummary
                    ? _.toListVehicle()
                    : Get.offNamed(AppRoutes.HOME),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: blue,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: blue, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                child: Row(
                  children: [
                    Image.asset('assets/gps.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        _.address,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  alignment: Alignment.topCenter,
                  height: _.closeTopContainer ? 0 : categoryHeight,
                  width: size.width,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Obx(
                () => _.showSummary ? OrderSummaryWidget() : ListCarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
