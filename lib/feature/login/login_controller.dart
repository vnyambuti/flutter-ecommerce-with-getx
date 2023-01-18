import 'dart:convert';

import 'package:ecom1/feature/login/login_model.dart';
import 'package:ecom1/foundation/services/httpClient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController LoginEditingController = TextEditingController();
  TextEditingController PasswordEditingController = TextEditingController();
  void login() async {
    LoginModel loginModel = LoginModel(
        email: LoginEditingController.text,
        password: PasswordEditingController.text);
    var response = await HttpClient.post("login", LoginModelToJson(loginModel));
    var error = jsonEncode(response['error']);
    print(error);
    if (response['success']) {
      print(response);
    } else {
      Get.snackbar("Error", error,
          icon: Icon(Icons.error, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderRadius: 0,
          shouldIconPulse: true,
          duration: Duration(seconds: 10));
      // Get.defaultDialog(
      //   title: "Error",
      //   middleText: error,
      //   backgroundColor: Colors.red,
      //   titleStyle: TextStyle(color: Colors.white),
      //   middleTextStyle: TextStyle(color: Colors.white),
      // );
    }
  }
}
