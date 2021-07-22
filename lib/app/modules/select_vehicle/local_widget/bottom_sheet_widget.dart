import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';
import 'package:uber_test/app/theme/colors.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectVehicleController>(
      builder: (_) => Container(
        width: double.infinity,
        height: 130,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/card.png'))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Obx(
                        () => Container(
                          child: DropdownButton<String>(
                            value: _.valueDrow,
                            icon: Image.asset('assets/arrow.png'),
                            elevation: 0,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(
                              height: 2,
                              color: Colors.transparent,
                            ),
                            onChanged: (String newValue) =>
                                _.onChangedDrow(newValue),
                            items: <String>[
                              '2547937585',
                              '5857585686',
                              '2828282885',
                              '2488277796'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                  Obx(() => Text(
                        '\$ ' + _.payCount.toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ))
                ],
              ),
            ),
            InkWell(
              onTap: () =>
                  _.showSummary ? _.addOrderSummary() : _.toOrderSummary(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: blue),
                  child: Obx(
                    () => Text(
                      _.showSummary ? 'Confirm & Request' : 'Continue',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
