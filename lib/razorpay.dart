import 'dart:html';
import 'dart:ui' as ui;
//conditional import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'users/views/Helper.dart';
import 'Orders.dart';
import 'UiFake.dart' if (dart.library.html) 'dart:ui' as ui;
import 'package:flutter/material.dart';

class RazorPayWeb extends StatelessWidget {
  final int? id;
  final num? price;

  const RazorPayWeb({Key? key, required this.id, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //register view factory
    ui.platformViewRegistry.registerViewFactory("rzp-html", (int viewId) {
      IFrameElement element = IFrameElement();
//Event Listener
      window.onMessage.forEach((element) {
        print(element);
        print('Event Received in callback: ${element.data}');
        if (element.data == 'MODAL_CLOSED') {
          Navigator.pop(context);
        } else if (element.data == 'SUCCESS') {
          print('PAYMENT SUCCESSFULL!!!!!!!');
        }
      });

      element.requestFullscreen();
      element.src = 'assets/html/payment.html';
      element.style.border = 'none';
      return element;
    });
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: HtmlElementView(viewType: 'rzp-html'),
      );
    }));
  }
}
