import 'package:ecom1/foundation/sp_icons/sp_button.dart';
import 'package:ecom1/foundation/sp_icons/sp_input.dart';
import 'package:ecom1/foundation/sp_icons/sp_solidbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  InputField(
                    inputType: TextInputType.text,
                    obscure: false,
                    text: "Firstname",
                    icon: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputField(
                    inputType: TextInputType.text,
                    obscure: false,
                    text: "Lastname",
                    icon: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputField(
                    inputType: TextInputType.emailAddress,
                    obscure: false,
                    text: "Email",
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputField(
                    inputType: TextInputType.phone,
                    obscure: false,
                    text: "Phone",
                    icon: Icon(
                      Icons.phone_android,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputField(
                    inputType: TextInputType.text,
                    obscure: true,
                    text: "Password",
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputField(
                    inputType: TextInputType.text,
                    obscure: true,
                    text: "Confirm Password",
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SPSolid(
                      text: "CREATE ACCOUNT",
                      onPressed: () {
                        formkey.currentState!.validate();
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
