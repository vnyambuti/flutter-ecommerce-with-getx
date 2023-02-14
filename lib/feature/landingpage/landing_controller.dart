import 'package:ecom1/feature/login/login.dart';
import 'package:ecom1/foundation/services/httpClient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  RxBool logedin = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLogin();
  }

  void checkLogin() async {
    print("check login");
    var storeToken = await HttpClient.readStore();
    if (storeToken != null) {
      print(storeToken);
      var response = await HttpClient.get('users', storeToken);
      print(response);
    } else {
      Get.bottomSheet(LoginBottomSheet());
    }
  }
}
