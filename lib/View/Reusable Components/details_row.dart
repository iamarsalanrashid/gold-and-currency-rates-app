import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import 'box_with_txt.dart';
import 'reusable_text.dart';

Widget detailsRow(
    String title,
    String bracketTxt,
    String buyRate,
    String sellRate,
    double fontSize,
    bool currencyScreen,
    double spaceBeforeTitle,
    double screenWidth,
    double screenHeight,
    double spaceBetweenBoxes) {
  return currencyScreen
      ? Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReusableTxt(
                        title: title,
                        fontWeight: FontWeight.w600,
                        fontSize: fontSize,
                        clr: brownColor),
                    ReusableTxt(
                        title: bracketTxt,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.02,
                        clr: brownColor),
                  ],
                ),
              ),
              SizedBox(
                width: spaceBeforeTitle,
              ),
              Container(
                width: screenWidth * 0.55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    boxWithTxt(buyRate, screenWidth, screenHeight),
                    SizedBox(
                      width: spaceBetweenBoxes,
                    ),
                    boxWithTxt(sellRate, screenWidth, screenHeight),
                  ],
                ),
              ),
            ],
          ),
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                ReusableTxt(
                    title: title,
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                    clr: brownColor),
                ReusableTxt(
                    title: bracketTxt,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.02,
                    clr: brownColor),
              ],
            ),
            boxWithTxt(buyRate, screenWidth, screenHeight),
            boxWithTxt(sellRate, screenWidth, screenHeight),
          ],
        );
}
