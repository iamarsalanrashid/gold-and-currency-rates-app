import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import './Model/CurrencyRatesModel.dart';
import './Model/GoldRates.dart';
import './View/Currency%20Showing%20Screen/currency_showing_screen.dart';
import './View/Gold%20Rate%20Screen/gold_rate_screen.dart';
import './view/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: GoldRates()),
        ChangeNotifierProvider.value(value: CurrencyRatesModel())

      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        fontFamily: 'Merriweather'),
        home: SplashScreen(),
        routes: {
          GoldRateScreen.routeName: (ctx) => GoldRateScreen(),
          CurrencyShowingScreen.routeName : (ctx) => CurrencyShowingScreen(),
        },
      ),
    );
  }
}
