import 'package:flutter/material.dart';

class ReusableTxt extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color clr;
  final Color underLine;
  final double underlineThickness;
  final TextDecorationStyle underlineStyle;
  final bool wantUnderline;

  const ReusableTxt(
      {Key? key,
      required this.title,
      required this.fontWeight,
      required this.fontSize,
      required this.clr,
      this.underLine = Colors.transparent,
      this.underlineStyle = TextDecorationStyle.solid,
      this.wantUnderline = false,
      this.underlineThickness = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: clr,
        decoration: wantUnderline == true
            ? TextDecoration.underline
            : TextDecoration.none,
        decorationStyle: underlineStyle,
        decorationColor: underLine,
        decorationThickness: underlineThickness,
      ),
    );
  }
}
