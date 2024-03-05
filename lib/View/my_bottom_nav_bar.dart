import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/nav_bar_controller.dart';
import '../../View/Gold%20Rate%20Screen/gold_rate_screen.dart';
import '../../View/Reusable%20Components/reusable_text.dart';
import './Currency Showing Screen/currency_showing_screen.dart';

class MyBottomNavBar extends StatelessWidget {
  MyBottomNavBar({Key? key}) : super(key: key);
  final NavBarController navBarController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
          bottomNavigationBar: Container(
            height: screenHeight * 0.07,
            width: screenWidth,
            color: const Color(0xffD9D9D9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    navBarController.changeIndex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.005,
                      ),
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/images/gold rate img.png',
                          height: screenHeight * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.005,
                      ),
                      Expanded(
                        flex: 1,
                        child: ReusableTxt(
                            title: 'Gold Rate',
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.027,
                            clr: Colors.black),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  thickness: 1,
                  color: Colors.black,
                  indent: 1,
                  endIndent: 1,
                ),
                GestureDetector(
                  onTap: () {
                    navBarController.changeIndex(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.005,
                      ),
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/images/currency rate img.png',
                          height: screenHeight * 0.04,
                          width: screenWidth * 0.15,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.005,
                      ),
                      Expanded(
                        flex: 1,
                        child: ReusableTxt(
                            title: 'Currency',
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.027,
                            clr: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
              centerTitle: true,
              title: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.01),
                child: Image.asset(
                  'assets/images/Gold & Currency 22.png',
                  height: screenHeight * 0.05,
                  width: screenWidth,
                ),
              )),
          body: _widgetOptions.elementAt(navBarController.selectedIndex.value),
        ));
  }

  final List<Widget> _widgetOptions = [
    // const GoldRateScreen(),
     GoldRateScreen(),
     CurrencyShowingScreen(),
  ];
}
