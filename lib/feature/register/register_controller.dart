import 'dart:convert';
import 'dart:developer';

import 'package:ecom1/feature/landingpage/langing_page.dart';
import 'package:ecom1/feature/login/login.dart';
import 'package:ecom1/feature/register/register_model.dart';
import 'package:ecom1/foundation/services/httpClient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confrirmController = TextEditingController();

  void register() async {
    log("reg");
    RegModel regmodel = RegModel(
        firstname: firstnameController.text,
        lastname: lastnameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text);
    var response = await HttpClient.post("register", RegModelToJson(regmodel));
    var error = jsonEncode(response['error']);
    var data = jsonEncode(response);
    if (response['success']) {
      Get.offAll(LandingPage());
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
