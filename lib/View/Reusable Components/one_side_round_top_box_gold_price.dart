import 'package:flutter/material.dart';
import 'package:goldapp.tradingbooks.store/View/Reusable%20Components/reusable_text.dart';

class SemiRoundBox extends StatelessWidget {
  const SemiRoundBox(
      {Key? key,
      required this.boxHeight,
      required this.boxWidth,
      this.topLeftBorderRadius = 0,
      this.topRightBorderRadius = 0,
      required this.title,
      required this.fontWeight,
      required this.fontSize,
      required this.txtColor,
      required this.boxColor})
      : super(key: key);
  final double boxHeight;
  final double boxWidth;
  final double topLeftBorderRadius;
  final double topRightBorderRadius;
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color txtColor;
  final Color boxColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      width: boxWidth,
      decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftBorderRadius),
              topRight: Radius.circular(topRightBorderRadius))),
      child: Center(
        child: ReusableTxt(
            title: title,
            fontWeight: fontWeight,
            fontSize: fontSize,
            clr: txtColor),
      ),
    );
  }
}
