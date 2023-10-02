import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sikh_prayer/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
            color: Colors.lightBlue,
            child: Image.asset(
              "assets/images/splashScreen.jpg",
              fit: BoxFit.fitWidth,
              height: 1100,
            )),
      ),
    );
  }
}
