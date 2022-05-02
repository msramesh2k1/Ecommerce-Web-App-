import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:razorpay_web/razorpay_web.dart';

class DummyPay extends StatelessWidget {
  const DummyPay({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: RazorpayWeb(
        rzpKey: "rzp_test_gTTQvwX8dAKWtz", // Enter Your Razorpay Key Here
        rzpSecret: "93qZc1a8BiCmV46rOIPusc4i", // Enter Your Razorpay Secret Here
        options: RzpOptions(
          amount: 1000,
          // generateOrderId: true,
          // corsUrl: kCorsUrl,
          name: "Razorpay",
          description: "Test Payment",
          image: "https://i.imgur.com/3g7nmJC.png",
          prefill: const PrefillData(
            name: "Razorpay",
            email: "rzp@gmail.com",
            contact: "9876543210",
          ),
          colorhex: "#FF0000",
        ),
        onPaymentSuccess: (String paymentId) {
          print("Payment Success");
          log(paymentId);
        },
        onPaymentError: (String error) {
          print("Payment Error");
        },
      ),
    );
  }
}