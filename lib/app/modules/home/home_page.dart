import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/home/home_controller.dart';
import 'package:uber_test/app/modules/home/local_widget/bottom_navigation_bar_widget.dart';
import 'package:uber_test/app/modules/home/local_widget/bottom_sheet_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => SafeArea(
          child: Scaffold(
        bottomNavigationBar: BottomNavigationBarWidget(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/map.png'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 60),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'First Car Wash ',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  )),
                              TextSpan(
                                  text: 'for free! \n'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xFF03C3FF),
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                  )),
                              TextSpan(
                                  text: 'Save on your first car wash',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 180,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF03C3FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Great, Get It!',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Thanks, maybe next time',
                          style: TextStyle(
                              color: Color(0xFF8F8F8F),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 17),
                          child: Container(
                            height: 4,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        Text(
                          'Hi, ${_.name}!',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 3,
                          child: InkWell(
                            onTap: () => Get.bottomSheet(BottomSheetWidget(),
                                isScrollControlled: true),
                            child: Container(
                              height: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Image.asset('assets/search.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text('Where are you going?',
                                          style: TextStyle(
                                              color: Color(0xFF8F8F8F),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.normal)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.only(top: 5),
                            itemCount: _.address.length ?? 0,
                            itemBuilder: (context, index) => Padding(
                              padding:
                                  EdgeInsets.only(left: 15, right: 5, top: 10),
                              child: Row(
                                children: [
                                  Image.asset('assets/gps.png'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(_.address[index],
                                        style: TextStyle(
                                            color: Color(0xFF8F8F8F),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
