import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class SPButton extends StatelessWidget {
  const SPButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.red),
        ),
        onPressed: () => {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
