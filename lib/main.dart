import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mrandmrs_ecom_webapp/Orders.dart';
import 'package:mrandmrs_ecom_webapp/admin/uploader.dart';
import 'package:mrandmrs_ecom_webapp/users/views/Helper.dart';
import 'package:mrandmrs_ecom_webapp/users/views/HomePage.dart';
import 'package:mrandmrs_ecom_webapp/users/views/Stepper.dart';
import 'package:mrandmrs_ecom_webapp/users/views/dummypayment.dart';
import 'package:mrandmrs_ecom_webapp/users/views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: const FirebaseOptions(
  //       apiKey: "AIzaSyCVrZof6f5g9touo83C9dW_mT2lsCv7Q6E",
  //       authDomain: "mr-and-mrs-93502.firebaseapp.com",
  //       projectId: "mr-and-mrs-93502",
  //       storageBucket: "mr-and-mrs-93502.appspot.com",
  //       messagingSenderId: "477888393209",
  //       appId: "1:477888393209:web:9fd8cd1e6e34e9dc59d728",
  //       measurementId: "G-B5NBD7TC5Z"),
  // );
await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  MRANDMRS.sharedprefs = await SharedPreferences.getInstance();
  MRANDMRS.firestore = FirebaseFirestore.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.openSansTextTheme(),
        highlightColor: Colors.teal,
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      title: 'MR AND MRS',
      home: HomeScreen(),
      builder: EasyLoading.init(),
    );
  }
}
