import 'package:ecom1/feature/profile/profile_without_login.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBGColor,
        appBar: AppBar(
          backgroundColor: AppColors.whitecolor,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child:
                Text("Profile", style: Theme.of(context).textTheme.headline6),
          ),
          elevation: 0,
          centerTitle: false,
        ),
        body: SingleChildScrollView(child: ProfileWithoutLogin()));
  }
}
