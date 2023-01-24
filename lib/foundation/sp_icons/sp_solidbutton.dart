import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class SPSolid extends StatelessWidget {
  SPSolid({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(AppColors.red),
            ),
            onPressed: onPressed,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            )));
  }
}
