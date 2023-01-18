import 'package:ecom1/feature/login/login.dart';
import 'package:ecom1/feature/profile/footer_profile.dart';
import 'package:ecom1/foundation/profileitem/profile_item.dart';
import 'package:ecom1/foundation/sp_icons/sp_button.dart';
import 'package:ecom1/foundation/sp_icons/sp_icon.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({Key? key}) : super(key: key);
  final double topcontainerheight = 190;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topcontainerheight,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: topcontainerheight * .58,
                    color: AppColors.dummyBGColor,
                  ),
                  Container(
                    height: topcontainerheight * .42,
                    color: AppColors.whitecolor,
                  )
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 132,
                  height: 132,
                  child: Card(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Image.asset(
                          "assets/images/profile.png",
                          color: AppColors.bodytextColor1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 170,
                bottom: 22,
                //LOGIN BUTTON
                child: Container(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.red),
                        ),
                        onPressed: () => {Get.bottomSheet(LoginBottomSheet())},
                        child: Container(
                          width: MediaQuery.of(context).size.width - 210,
                          child: Center(
                            child: Text(
                              "LOGIN / SIGN UP",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //--------FEATURE TILES---------//
        Container(
          color: AppColors.whitecolor,
          child: Column(
            children: [
              ProfileItem(
                assetname: "orders.png",
                title: "Orders",
                subtitle: "All Orders",
                isLast: false,
                onTap: () => {Get.bottomSheet(LoginBottomSheet())},
              ),
              ProfileItem(
                assetname: "helpdesk.png",
                title: "Help Center",
                subtitle: "Contact us For Queries",
                isLast: false,
              ),
              ProfileItem(
                assetname: "wishlist.png",
                title: "WishList",
                subtitle: "All Products in the wishlist",
                isLast: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: AppColors.whitecolor,
          child: Column(
            children: [
              ProfileItem(
                assetname: "qr-code.png",
                title: "Scan cupon",
                isLast: false,
              ),
              ProfileItem(
                assetname: "refer.png",
                title: "Refer and Earn",
                isLast: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        FooterProfile(),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Text(
            "APP VERSION 0.0.1",
            style: TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w400,
                color: AppColors.bodytextColor1),
          ),
        ),
        SizedBox(
          height: 80,
        )
      ],
    );
  }
}
