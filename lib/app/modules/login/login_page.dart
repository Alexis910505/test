import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_test/app/modules/login/login_controller.dart';
import 'package:uber_test/app/theme/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Welcome Car Scrubbing',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Sign to continue',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Opacity(
                      opacity: 6 / 10,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 25),
                        child: Obx(
                          () => !_.error
                              ? Text(
                                  'Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                )
                              : Text(
                                  'This name exist',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: error),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Obx(
                      () => Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: !_.error ? blue : error),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          onChanged: _.onChangedMail,
                          cursorColor: !_.error ? blue : error,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: !_.error ? blue : error,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Opacity(
                      opacity: 6 / 10,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 25),
                        child: Obx(
                          () => !_.error
                              ? Text(
                                  'Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                )
                              : Text(
                                  'Password incorrect',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: error),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Obx(
                      () => Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: !_.error ? blue : error),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          onChanged: _.onChangedPaswor,
                          cursorColor: !_.error ? blue : error,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: !_.error ? blue : error,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              InkWell(
                onTap: _.login,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF1DE9B6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Log in'.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
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
