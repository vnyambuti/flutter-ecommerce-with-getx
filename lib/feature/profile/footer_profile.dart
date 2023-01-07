import 'dart:ui';

import 'package:ecom1/foundation/sp_icons/sp_button.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class FooterProfile extends StatelessWidget {
  const FooterProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SPButton(text: "FAQ"),
        SPButton(text: "ABOUT US"),
        SPButton(text: "TERMS OF USE"),
        SPButton(text: "PRIVACY POLICY"),
      ],
    );
  }
}
