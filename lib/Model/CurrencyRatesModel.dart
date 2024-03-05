import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CurrencyRatesModel with ChangeNotifier{

  String dollarBuy  = 'N/A';
  String dollarSell = 'N/A';
  String dollarHigh = 'N/A';
  String dollarLow = 'N/A';
  String gbpBuy = 'N/A';
  String gbpSell = 'N/A';
  String euroBuy = 'N/A';
  String euroSell = 'N/A';
  String malayBuy = 'N/A';
  String malaySell = 'N/A';
  String riyalBuy = 'N/A';
  String riyalSell = 'N/A';
  String dirhamBuy = 'N/A';
  String dirhamSell = 'N/A';
  String dollarInterBankBuy = 'N/A';
  String dollarInterBankSell = 'N/A';
  String dollarUpdateTime = 'N/A';
  String result = 'N/A';
  String interBankRateSetting = 'N/A';

Future<void> getCurrencyRates() async {
  final url = Uri.parse('https://goldapp-4827a-default-rtdb.firebaseio.com/currency.json');

   try { final response = await http.get(url).timeout(const Duration(seconds: 10,));
     final responseData =  json.decode(response.body) as Map<String , dynamic>;
   dirhamSell = responseData['dirhamSell'];
   dirhamBuy = responseData['dirhamBuy'];
   dollarBuy = responseData['dollarBuy'];
   dollarInterBankBuy = responseData['dollarInterBankBuy'];
   dollarInterBankSell = responseData['dollarInterBankSell'];
   dollarSell = responseData['dollarSell'];
   dollarUpdateTime = responseData['dollarUpdateTime'];
   euroBuy = responseData['euroBuy'];
   euroSell = responseData['euroSell'];
   gbpBuy = responseData['gbpBuy'];
   gbpSell = responseData['gbpSell'];
   malayBuy = responseData['malayBuy'];
   malaySell = responseData['malaySell'];
   riyalBuy = responseData['riyalBuy'];
   riyalSell = responseData['riyalSell'];
   notifyListeners();
   } catch(error){
     throw(error);
   }

}


}
