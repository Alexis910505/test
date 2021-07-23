import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/bottom_sheet_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectVehicleController>(
      builder: (_) => Scaffold(
        bottomSheet: BottomSheetWidget(),
        body: CustomScrollView(
          slivers: [SliverAppBar()],
        ),
      ),
    );
  }
}
