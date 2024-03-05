import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'my_bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isConnected = false;

  Future<void> _checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        _isConnected = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('No Internet Connection',textAlign: TextAlign.center,),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
            label: 'Retry',
            onPressed: () {
              _checkConnectivity();
            }),
      ));
      _startCheckingInternetConnectivity();
      return;
    } else {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Internet Connected',textAlign: TextAlign.center,),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,

      ));

      setState(() {
        _isConnected = true;
      });
    }
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MyBottomNavBar()));
    });
  }

  _startCheckingInternetConnectivity() {
    Connectivity().onConnectivityChanged.listen(
          (event) => _checkConnectivity(),
        );
  }

  @override
  void initState() {
    _checkConnectivity();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/launch_icon.png',
            height: 150,
            width: 150,
          ),
          // if (!_isConnected)
            LoadingAnimationWidget.prograssiveDots(
                color: Colors.black, size: 40)
        ],
      ),
    ),);
  }
}
