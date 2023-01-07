import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class SPButton extends StatelessWidget {
  const SPButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () => {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(text,
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColors.headline6)),
        ),
      ),
    );
  }
}
