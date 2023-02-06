import 'package:ecom1/feature/NewPassword/new_password.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

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
                  text: "Reset ",
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
              height: 60,
              child: TextField(
                //  controller: logincontroller.LoginEditingController,
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

            Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(AppColors.red),
                    ),
                    onPressed: () => {},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "RESET",
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
                    text: " Already have a code?  ",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.captiontextColor1)),
                TextSpan(
                    text: " Register  ",
                    style: TextStyle(fontSize: 14, color: AppColors.red),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(NewPassword());
                      }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
