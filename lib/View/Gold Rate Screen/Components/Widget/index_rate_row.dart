import 'package:flutter/material.dart';

import '../../../../Utils/constants.dart';
import '../../../Reusable Components/reusable_text.dart';

class IndexRateRow extends StatelessWidget {
  const IndexRateRow({super.key, required this.index});
final String index;
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ReusableTxt(
            title: 'Index ',
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.03,
            clr: Colors.black),
        SizedBox(width:screenWidth * 0.1),
        ReusableTxt(
            title: index,
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.03,
            clr: brownColor),
      ],
    );
  }
}
