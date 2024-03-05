import 'package:flutter/material.dart';

import '../../../Reusable Components/reusable_text.dart';

class StockExchangeTitle extends StatelessWidget {
  const StockExchangeTitle({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return  Align(
        alignment: Alignment.center,
        child: ReusableTxt(
            title: 'Pakistan Stock Exchange',
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.04,
            clr: Colors.black));
  }
}
