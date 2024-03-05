import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Divider(
      indent: screenWidth * 0.025,
      endIndent: screenWidth * 0.025,
      thickness: 1,
      color: Colors.grey,
    );
  }
}
