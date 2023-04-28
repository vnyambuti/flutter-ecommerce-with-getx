import 'package:ecom1/feature/landingpage/langing_page.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carry N Go",
      theme: ThemeData(
        textTheme: TextTheme(
            headline6: TextStyle(
              
                fontSize: 14.5,
                letterSpacing: 0.15,
                color: AppColors.headline6),
            bodyText1: TextStyle(color: AppColors.bodytextColor1, fontSize: 14),
            caption:
                TextStyle(color: AppColors.captiontextColor1, fontSize: 11)),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: AppColors.scaffoldBGColor, //<-- SEE HERE
            titleTextStyle: TextStyle(color: Colors.black),
            elevation: 0),
      ),
      home: LandingPage(),
    );
  }
}
