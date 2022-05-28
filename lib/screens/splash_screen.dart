import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/SplashController.dart';


class SplashScreen extends GetView<SplashController> {
  late SharedPreferences sharedPreferences;
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () async {
      controller.delayTime();
    });
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Color(0xFF222222),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(

            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/bg.png",
                  fit: BoxFit.cover,

                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/ccapCornerDesign.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
