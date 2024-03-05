import 'package:flutter/material.dart';
import 'package:goldapp.tradingbooks.store/View/Reusable%20Components/reusable_text.dart';



Widget boxWithTxt(String title,screenWidth,screenHeight){

  return  Container(
    height: screenHeight * 0.037,
    width: screenWidth * 0.25,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1)),
    child: Center(
        child: ReusableTxt(
            title: title,
            fontWeight: FontWeight.w500,
            fontSize: screenWidth * 0.035,
            clr: Colors.black)),
  );
}