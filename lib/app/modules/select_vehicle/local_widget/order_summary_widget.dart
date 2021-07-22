import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/calendar_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/radio_bottom_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/local_widget/select_widget.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';
import 'package:uber_test/app/theme/colors.dart';

class OrderSummaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectVehicleController>(
      builder: (_) => Expanded(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            controller: _.controller,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 20,
                alignment: Alignment.center,
                child: Container(
                  height: 4,
                  width: 36,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('History',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal)),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Who provides the utilities? ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        )),
                    TextSpan(
                        text: '(water, electricity) ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                    TextSpan(
                        text: 'See more',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF03C3FF),
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => RadioBottomWidget(
                      value: 1,
                      groupValue: _.radioBottom,
                      title: 'Car washer (\$7)',
                      onChanged: (value) => _.onChangedRadioBottom(value),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Obx(
                    () => RadioBottomWidget(
                      value: 2,
                      groupValue: _.radioBottom,
                      title: 'You (\$0)',
                      onChanged: (value) => _.onChangedRadioBottom(value),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('Discounts',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )),
              SizedBox(
                height: 5,
              ),
              Obx(
                () => SelectWidget(
                  select: _.select,
                  title: 'The first car wash for free',
                  onTap: _.onChangedSelect,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Select order time',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Obx(
                    () => Text(_.shipDate,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => Get.dialog(CalendarWidget()),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/calendar.png'),
                          )),
                        ),
                        Text('Shedule',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: blue,
                              fontStyle: FontStyle.normal,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Subtotal: \$${_.payCount}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  )),
              SizedBox(
                height: 10,
              ),
              Text('Taxes & Fees: \$2.32',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  )),
              SizedBox(
                height: 10,
              ),
              Text('Discount: \$0',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  )),
              SizedBox(
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
