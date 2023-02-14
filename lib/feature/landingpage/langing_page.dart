import 'package:ecom1/feature/categories/categories.dart';
import 'package:ecom1/feature/homepage/homepage.dart';
import 'package:ecom1/feature/landingpage/landing_controller.dart';
import 'package:ecom1/feature/profile/profile.dart';
import 'package:ecom1/foundation/sp_icons/sp_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List pages = [Homepage(), Categories(), Profile()];
  final landingcontroller = Get.put(LandingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Color(0xfffe416c),
        selectedLabelStyle: TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SpIcon(
                  assetname: "logo-black.png", isSelected: 0 == currentIndex),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SpIcon(
                  assetname: "categories.png", isSelected: 1 == currentIndex),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: SpIcon(
                assetname: "profile.png",
                isSelected: 2 == currentIndex,
              ),
              label: "Profile"),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
