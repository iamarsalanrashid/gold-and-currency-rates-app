import 'package:flutter/material.dart';

import '../../../../Utils/constants.dart';
import '../../../Reusable Components/reusable_text.dart';

class LastUpdateRow extends StatelessWidget {
  const LastUpdateRow({super.key, required this.time});
final String time;
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReusableTxt(
            title: 'Update',
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.035,
            clr: Colors.black),
        ReusableTxt(
            title:
          time,
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.035,
            clr: brownColor),
      ],
    );
  }
}
