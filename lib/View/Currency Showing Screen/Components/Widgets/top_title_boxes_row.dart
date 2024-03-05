import 'package:flutter/material.dart';

import '../../../../Utils/constants.dart';
import '../../../Reusable Components/border_box.dart';
import '../../../Reusable Components/one_side_round_top_box_gold_price.dart';

class TopTitleBoxesRow extends StatelessWidget {
  const TopTitleBoxesRow({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 0, top: screenHeight * 0.025),
      child: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.02,
          ),
          BorderBox(
              boxHeight: screenHeight * 0.04,
              boxWidth: screenWidth * 0.3,
              borderRadius: 5,
              borderColor: brownColor,
              title: 'Currency',
              fontWeight: FontWeight.w600,
              fontSize: screenWidth * 0.033,
              txtColor: brownColor),
          SizedBox(
            width: screenWidth * 0.1,
          ),
          SemiRoundBox(
            boxHeight: screenHeight * 0.04,
            boxWidth: screenWidth * 0.27,
            title: 'BUY',
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.03,
            txtColor: Colors.white,
            boxColor: brownColor,
            topLeftBorderRadius: 18,
          ),
          SizedBox(
            width: screenWidth * 0.009,
          ),
          SemiRoundBox(
            boxHeight: screenHeight * 0.04,
            boxWidth: screenWidth * 0.27,
            title: 'SELL',
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.03,
            txtColor: Colors.white,
            boxColor: purpleColor,
            topRightBorderRadius: 18,
          ),
        ],
      ),
    );
  }
}
