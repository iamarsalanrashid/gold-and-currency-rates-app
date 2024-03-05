import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../View/Reusable%20Components/custom_divider.dart';
import '../../View/Gold%20Rate%20Screen/Components/Widget/index_rate_row.dart';
import '../../View/Gold%20Rate%20Screen/Components/Widget/last_update_time_row.dart';
import '../../View/Gold%20Rate%20Screen/Components/Widget/stock_exchange_title.dart';
import '../../Model/GoldRates.dart';
import '../Reusable Components/details_row.dart';
import 'Components/Widget/top_title_boxes_row.dart';

class GoldRateScreen extends StatefulWidget {
  static const routeName = '/gold-rate-screen';

  @override
  State<GoldRateScreen> createState() => _GoldRateScreenState();
}

class _GoldRateScreenState extends State<GoldRateScreen> {
  Future<void> _getRates() async {
    await Provider.of<GoldRates>(context, listen: false).getGoldRates();
  }

  @override
  Widget build(BuildContext context) {
    final goldData = Provider.of<GoldRates>(context, listen: false);
    print('build gold rate screen');
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    return FutureBuilder(
        future: _getRates(),
        builder: (context, snapShot) =>
            snapShot.connectionState == ConnectionState.waiting
                ? Center(child: CircularProgressIndicator())
                : Stack(
                    children: [
                      SizedBox(
                        height: screenHeight,
                        width: screenWidth,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              const TopTitleBoxesRow(),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              detailsRow(
                                  'Gold',
                                  '(24K/Tola)  ',
                                  goldData.buy24k as String,
                                  goldData.sell24k as String,
                                  screenWidth * 0.035,
                                  false,
                                  5,
                                  screenWidth,
                                  screenHeight,
                                  10),
                              const CustomDivider(),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              detailsRow(
                                  'Gold',
                                  '(22K/Tola)    ',
                                  goldData.buy22kt as String,
                                  goldData.sell22kt as String,
                                  screenWidth * 0.03,
                                  false,
                                  0,
                                  screenWidth,
                                  screenHeight,
                                  0),
                              const CustomDivider(),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              detailsRow(
                                  'Gold',
                                  '(24K/Gram)',
                                  goldData.gramsGoldBuy as String,
                                  goldData.gramsGoldSell as String,
                                  screenWidth * 0.035,
                                  false,
                                    5,
                                  screenWidth,
                                  screenHeight,
                                  14),
                              const CustomDivider(),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              detailsRow(
                                  ' Silver',
                                  '(24k/Tola)',
                                  goldData.buySilver as String,
                                  goldData.buySilver as String,
                                  screenWidth * 0.03,
                                  false,
                                  5,
                                  screenWidth,
                                  screenHeight,
                                  10),
                              const CustomDivider(),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              detailsRow(
                                  'BTC',
                                  '(USDT)             ',
                                  goldData.btc as String,
                                  goldData.btc as String,
                                  screenWidth * 0.035,
                                  false,
                                  5,
                                  screenWidth,
                                  screenHeight,
                                  10),
                              const CustomDivider(),
                              SizedBox(
                                height: screenHeight * 0.1,
                              ),
                              const StockExchangeTitle(),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              IndexRateRow(
                                index: goldData.index as String,
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              LastUpdateRow(
                                  time:
                                      '${now.day}/${now.month}/${now.year}  at  ${now.hour}:${now.minute}:${now.second}')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
  }
}
