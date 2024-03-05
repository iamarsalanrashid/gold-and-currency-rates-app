import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../View/Gold%20Rate%20Screen/Components/Widget/last_update_time_row.dart';
import '../../View/Reusable%20Components/custom_divider.dart';
import '../../Model/CurrencyRatesModel.dart';
import '../Gold Rate Screen/Components/Widget/top_title_boxes_row.dart';
import '../Reusable Components/details_row.dart';

class CurrencyShowingScreen extends StatefulWidget {
  static const routeName = '/currency-showing-screen';

  @override
  State<CurrencyShowingScreen> createState() => _CurrencyShowingScreenState();
}

class _CurrencyShowingScreenState extends State<CurrencyShowingScreen> {

  Future<void> _getRates() async {
    await Provider.of<CurrencyRatesModel>(context, listen: false)
        .getCurrencyRates();
  }

  @override
  Widget build(BuildContext context) {
    print('build currency screen');
    final currencyData =
        Provider.of<CurrencyRatesModel>(context, listen: false);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    return FutureBuilder(
      future: _getRates(),
      builder: (context, snapShot) =>
          snapShot.connectionState == ConnectionState.waiting
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                  child: RefreshIndicator(
                    onRefresh: () => currencyData.getCurrencyRates(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TopTitleBoxesRow(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              'InterBank',
                              '(Dollar)',
                              currencyData.dollarInterBankBuy as String,
                              currencyData.dollarInterBankSell as String,
                              screenWidth * 0.035,
                              true,
                              screenWidth * 0.078,
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              'Dollar',
                              '',
                              currencyData.dollarBuy as String,
                              currencyData.dollarBuy as String,
                              screenWidth * 0.035,
                              true,
                              screenWidth * 0.255,
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              ' British',
                              '(Pound)',
                              currencyData.gbpBuy as String,
                              currencyData.gbpSell as String,
                              screenWidth * 0.03,// dollar text box size
                              true,
                              screenWidth * 0.155,//space between dollar and buy box
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),//spz
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              'euro ',
                              '',
                              currencyData.euroBuy as String,
                              currencyData.euroSell as String,
                              screenWidth * 0.035,
                              true,
                              screenWidth * 0.275,
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              'malaysian',
                              '(ringgit)',
                              currencyData.malayBuy as String,
                              currencyData.malaySell as String,
                              screenWidth * 0.035,
                              true,
                              screenWidth * 0.07,
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              'Riyal',
                              '',
                              currencyData.riyalBuy as String,
                              currencyData.riyalSell as String,
                              screenWidth * 0.035,
                              true,
                              screenWidth * 0.277,
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          detailsRow(
                              'Dirham',
                              '',
                              currencyData.dirhamBuy as String,
                              currencyData.dirhamSell as String,
                              screenWidth * 0.035,
                              true,
                              screenWidth * 0.225,
                              screenWidth,
                              screenHeight,
                              screenWidth * 0.05),
                          const CustomDivider(),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),
                          LastUpdateRow(
                              time:
                                  '${now.day}/${now.month}/${now.year} at ${now.hour}:${now.minute}:${now.second}')
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}
