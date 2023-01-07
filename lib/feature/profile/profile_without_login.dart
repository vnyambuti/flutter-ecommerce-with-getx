import 'package:ecom1/feature/profile/footer_profile.dart';
import 'package:ecom1/foundation/profileitem/profile_item.dart';
import 'package:ecom1/foundation/sp_icons/sp_icon.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({Key? key}) : super(key: key);
  final double topcontainerheight = 190;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topcontainerheight,
          child: Column(
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
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: AppColors.whitecolor,
          child: Column(
            children: [
              ProfileItem(
                assetname: "orders.png",
                title: "Orders",
                subtitle: "All Orders",
                isLast: false,
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
      ],
    );
  }
}
