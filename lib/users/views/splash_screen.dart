import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mrandmrs_ecom_webapp/users/views/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return const HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[100],
      child: SpinKitDoubleBounce(
        color: Colors.brown.shade900,
        size: 60.0,
      ),
    );
  }
}
