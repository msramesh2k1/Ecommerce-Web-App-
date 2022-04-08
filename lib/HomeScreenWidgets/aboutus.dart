import 'package:flutter/material.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/helpers/mobilewidgets.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TopNotifyBlackBox(),
      
    );
  }
}