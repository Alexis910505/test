import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/home/home_controller.dart';
import 'package:uber_test/app/routes/app_route.dart';
import 'package:uber_test/app/theme/colors.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
        padding: EdgeInsets.only(top: 60),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    child: Text('Set Location',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      child: Image.asset('assets/close.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: blue, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Image.asset('assets/search.png'),
                    Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('History',
                  style: TextStyle(
                      color: Color(0xFF8F8F8F),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 5),
                  itemCount: controller.address.length ?? 0,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () => Get.toNamed(AppRoutes.SELECTVEHICLE,
                        arguments: controller.address[index]),
                    leading: Image.asset('assets/gps.png'),
                    title: Text(controller.address[index],
                        style: TextStyle(
                            color: Color(0xFF8F8F8F),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
