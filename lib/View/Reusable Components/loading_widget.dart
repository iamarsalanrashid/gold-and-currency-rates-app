import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import 'reusable_text.dart';

Widget loadingWidget(double screenWidth) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ReusableTxt(
          title: 'Loading',
          fontWeight: FontWeight.w700,
          fontSize: screenWidth * 0.04,
          clr: Colors.black),
      const CircularProgressIndicator(
        color: purpleColor,
      )
    ],
  );
}
