

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  final emailTextEditController = new TextEditingController();
  SharedPreferences sharedPreferences;

  @override
  void onInit() {
    super.onInit();
  }
  //login api call for user.
  loginApiCall(String email, String password) async {
    print("inside login");
    sharedPreferences = await SharedPreferences.getInstance();
    var response = await RemoteServices.loginApiCall(email, password);
    print(response);
    if (response != null) {

      print("success");
    }
  }
}