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
      padding: EdgeInsets.only(
          left: 20.0, right: 8, top: screenHeight * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BorderBox(
              boxHeight: screenHeight * 0.04,
              boxWidth: screenWidth * 0.2,
              borderRadius: 5,
              borderColor: brownColor,
              title: 'Rates',
              fontWeight: FontWeight.w600,
              fontSize: screenWidth * 0.03,
              txtColor: brownColor),
          SizedBox(width: screenWidth*0.05,),
          SemiRoundBox(
            boxHeight: screenHeight * 0.04,
            boxWidth: screenWidth * 0.3,
            title: 'BUY',
            fontWeight: FontWeight.w700,
            fontSize: screenWidth * 0.03,
            txtColor: Colors.white,
            boxColor: brownColor,
            topLeftBorderRadius: 18,
          ),
          SemiRoundBox(
            boxHeight: screenHeight * 0.04,
            boxWidth: screenWidth * 0.3,
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
