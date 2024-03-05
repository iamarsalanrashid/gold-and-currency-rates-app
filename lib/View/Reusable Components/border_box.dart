import 'package:flutter/material.dart';
import 'package:goldapp.tradingbooks.store/View/Reusable%20Components/reusable_text.dart';

class BorderBox extends StatelessWidget {
  final double boxHeight;
  final double boxWidth;
  final double borderRadius;
  final Color borderColor;
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color txtColor;
  final Color boxColor;

  const BorderBox({
    Key? key,
    required this.boxHeight,
    required this.boxWidth,
    required this.borderRadius,
    required this.borderColor,
    required this.title,
    required this.fontWeight,
    required this.fontSize,
    required this.txtColor,
    this.boxColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      height: boxHeight,
      width: boxWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: boxColor,
          border: Border.all(color: borderColor, width: 1)),
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
