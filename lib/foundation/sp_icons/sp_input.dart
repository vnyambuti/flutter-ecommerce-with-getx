import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  InputField(
      {Key? key,
      required this.text,
      this.icon,
      required this.obscure,
      required this.inputType})
      : super(key: key);

  String text;
  // Widget keyboardtype;
  Widget? icon;
  bool obscure;
  TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        // controller: logincontroller.PasswordEditingController,
        keyboardType: inputType,
        obscureText: obscure,
        style: TextStyle(color: AppColors.captiontextColor1, fontSize: 13),
        validator: (value) {
          if (value!.isEmpty) {
            return "$text" + "  cannot be empty";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(fontSize: 13, color: Colors.black54),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: icon,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.black54)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.black54)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.red)),
        ),
      ),
    );
  }
}
