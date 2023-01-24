import 'package:ecom1/feature/login/login_controller.dart';
import 'package:ecom1/feature/register/register.dart';
import 'package:ecom1/foundation/sp_icons/sp_button.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBottomSheet extends StatelessWidget {
  LoginBottomSheet({Key? key}) : super(key: key);
  var logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2.5,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Image.asset("assets/images/logo-big.png",
            //         height: 40, width: 40),
            //     InkWell(
            //       onTap: () => Get.back(),
            //       child: Icon(
            //         Icons.clear,
            //         size: 30,
            //       ),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Login ",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              // TextSpan(
              //     text: " or  ",
              //     style: TextStyle(fontSize: 15, color: Colors.black)),
              // TextSpan(
              //     text: " SignUp",
              //     style: TextStyle(
              //         fontSize: 19,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.black))
            ])),
            SizedBox(
              height: 10,
            ),
            //---EMAIL INPUT
            Container(
              height: 43,
              child: TextField(
                controller: logincontroller.LoginEditingController,
                keyboardType: TextInputType.emailAddress,
                style:
                    TextStyle(color: AppColors.captiontextColor1, fontSize: 13),
                decoration: InputDecoration(
                    labelText: "Email *",
                    labelStyle: TextStyle(fontSize: 13, color: Colors.black54),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.black54)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.black54))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //--PASSWORD INPUT
            Container(
              height: 43,
              child: TextField(
                controller: logincontroller.PasswordEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style:
                    TextStyle(color: AppColors.captiontextColor1, fontSize: 13),
                decoration: InputDecoration(
                    labelText: "Password *",
                    labelStyle: TextStyle(fontSize: 13, color: Colors.black54),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.key,
                        color: Colors.red,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.black54)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.black54))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "By Continuing you agree to the ",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.captiontextColor1)),
                TextSpan(
                    text: " terms of use  ",
                    style: TextStyle(fontSize: 12, color: AppColors.red)),
                TextSpan(
                    text: " & ",
                    style: TextStyle(fontSize: 12, color: Colors.black54)),
                TextSpan(
                    text: " privacy policy  ",
                    style: TextStyle(fontSize: 12, color: AppColors.red)),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(AppColors.red),
                    ),
                    onPressed: logincontroller.login,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ))),
            SizedBox(
              height: 10,
            ),
            //----lower text--->
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Forgot Password ?",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.captiontextColor1)),
                TextSpan(
                    text: " Reset  ",
                    style: TextStyle(fontSize: 14, color: AppColors.red)),
                TextSpan(
                    text: " Dont have an account?  ",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.captiontextColor1)),
                TextSpan(
                    text: " Register  ",
                    style: TextStyle(fontSize: 14, color: AppColors.red),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(Register());
                      }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
