import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tober/src/ui/screens/login_screen.dart';
import 'package:tober/src/utils/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, LoginScreen.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_50,
      body: Center(
        child: Lottie.asset(
          'assets/lottie/Loader.json',
          fit: BoxFit.contain,
          height: double.infinity,
          width: double.infinity
        ),
      ),
    );
  }
}
