import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:uber_test/app/modules/select_vehicle/select_vehicle_controller.dart';
import 'package:uber_test/app/theme/colors.dart';

class ListCarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectVehicleController>(
      builder: (_) => Expanded(
        child: SwipeDetector(
          onSwipeDown: _.onTapDown,
          onSwipeUp: _.onTapUp,
          child: Container(
            color: Colors.white,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _.vehicles.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: _.vehicles[index].count != 0
                                    ? AssetImage('assets/checkmark.png')
                                    : AssetImage('assets/notcheckmark.png'),
                              )),
                            ),
                            Opacity(
                              opacity: _.vehicles[index].count != 0 ? 1 : .4,
                              child: Container(
                                width: 80,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(_.vehicles[index].image),
                                )),
                              ),
                            ),
                            Container(
                              child: Text(
                                _.vehicles[index].trademark,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            _.vehicles[index].trademark == 'Coupe'
                                ? Container(
                                    width: 80,
                                    height: 40,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    color: Colors.grey[300],
                                    child: Stack(
                                      overflow: Overflow.visible,
                                      children: [
                                        Positioned(
                                            left: -12,
                                            top: 0,
                                            bottom: 0,
                                            child: InkWell(
                                              onTap: () =>
                                                  _.onChangedMin(index),
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/min.png'),
                                                )),
                                              ),
                                            )),
                                        Positioned(
                                          top: 0,
                                          bottom: 0,
                                          right: -12,
                                          child: InkWell(
                                            onTap: () => _.onChangedMax(index),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/max.png'),
                                              )),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          bottom: 0,
                                          right: 0,
                                          left: 0,
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '${_.vehicles[index].count}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: 80,
                                    height: 40,
                                    alignment: Alignment.center,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: blue, width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextField(
                                      onChanged: (value) =>
                                          _.onChangedCount(index, value),
                                      textAlign: TextAlign.center,
                                      keyboardType:
                                          TextInputType.numberWithOptions(
                                              signed: true),
                                      decoration: InputDecoration(
                                        hintText: '${_.vehicles[index].count}',
                                        hintMaxLines: 1,
                                        border: InputBorder.none,
                                      ),
                                      cursorColor: blue,
                                    ),
                                  ),
                            Container(
                              child: Text(
                                '\$${_.vehicles[index].cost}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
