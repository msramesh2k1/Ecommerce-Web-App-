import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mrandmrs_ecom_webapp/Detailer.dart';
import 'package:mrandmrs_ecom_webapp/detailproductscreen.dart';
import 'package:mrandmrs_ecom_webapp/razorpay.dart';
import '../../UiFake.dart' if (dart.library.html) 'dart:ui' as ui;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/widgethelper.dart';
import 'package:mrandmrs_ecom_webapp/paymentpage.dart';
import 'package:provider/src/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../Address.dart';
import '../../CartPage.dart';
import 'Helper.dart';
import '../../Orders.dart';
import '../../controllers/cart_controller.dart';

class StepperCart extends StatefulWidget {
  @override
  _StepperCartState createState() => _StepperCartState();
}

class _StepperCartState extends State<StepperCart> {
  var currentStep = 0;
  num totalAmount = 0;
  int quanity = 1;
  int cartno = 0;
  int? addressid;
  final razorpay = Razorpay();
  @override
  void initState() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("address")
        .snapshots();
    // TODO: implement initState

    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("address")
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        addressid = querySnapshot.docs.length;
      });
    });
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .snapshots();
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        cartno = querySnapshot.docs.length;
      });
    });

    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        setState(() {
          MRANDMRS.sharedprefs!
              .setInt(element.data()['id'], element.data()['quanity']);
          totalAmount = totalAmount +
              element.data()["oprice"] * element.data()['quanity'];
        });
      });
    });
    // TODO: implement initState
    super.initState();
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWallet);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paySuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, payError);
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .snapshots();
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        cartno = querySnapshot.docs.length;
      });
    });
    // FirebaseFirestore.instance
    //     .collection("users")
    //     .doc(MRANDMRS.sharedprefs!.getString("uid"))
    //     .collection("cart")
    //     .get()
    //     .then((value) {
    //   value.docs.forEach((element) {
    //     setState(() {
    //       MRANDMRS.sharedprefs!
    //           .setInt(element.data()['id'], element.data()['quanity']);
    //       totalAmount =
    //           totalAmount + element.data()["oprice"] * element.data()['quanity'];
    //     });
    //   });
    // });
  }

  void paySuccess(PaymentSuccessResponse response) {
    print("IOiooioiooioioi" + response.paymentId.toString());

    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .get()
        .then((value) => value.docs.forEach((element) {
              FirebaseFirestore.instance
                  .collection("orders")
                  .doc(MRANDMRS.sharedprefs!.getString("uid"))
                  .collection("items")
                  .doc(response.paymentId.toString())
                  .set({
                "id": response.paymentId.toString(),
                "status": "order Placed",
                "address": id,
                "payment": "PAID"
              });
              FirebaseFirestore.instance
                  .collection("orders")
                  .doc(MRANDMRS.sharedprefs!.getString("uid"))
                  .collection("items")
                  .doc(response.paymentId.toString())
                  .collection("items")
                  .doc(element.data()['id'])
                  .set({
                "height": element.data()['height'],
                'width': element.data()['width'],
                "depth": element.data()['depth'],
                "weight": element.data()['weight'],
                "warranty": element.data()['warranty'],
                "status": "orderPlaced, Yet to Deliver",
                "category": element.data()['category'],
                "name": element.data()["name"],
                "quanity": element.data()['quanity'],
                "wood": element.data()['wood'],
                "id": element.data()['id'],
                'mainimage': element.data()['mainimage'],
                "Description": element.data()['Description'],
                'price': element.data()['price'],
                'oprice': element.data()['oprice']

// ********************//
              });
              FirebaseFirestore.instance
                  .collection("users")
                  .doc(MRANDMRS.sharedprefs!.getString("uid"))
                  .collection("cart")
                  .doc(element.data()['id'])
                  .delete();
            }));
    FirebaseFirestore.instance
        .collection("orders")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .set({
      // "addressid": id,
      // "amount": totalAmount,
//"orderBy":EcommerceApp.sharedPreferences!.getStringList(EcommerceApp.userCartList),
      //  "orderBy": MRANDMRS.sharedprefs!.getString("uid"),
// EcommerceApp.productID:EcommerceApp.sharedPreferences!.getStringList(EcommerceApp.userCartList),
      //"method": "Cash On Delievery",
      "time": DateTime.now().millisecondsSinceEpoch.toString(),
      // "paid": true,
    }).then((value) => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (c) => Orders())));
  }

  void payError(PaymentFailureResponse response) {
    print(response.message! + response.code.toString());
  }

  void externalWallet(ExternalWalletResponse response) {
    print(response.walletName);
  }

  getPayment() {
    var option = {
      'wallets': ['paytm'],
      "key": "rzp_test_ecJqQLLxH72kvE",
      "amount": totalAmount.toDouble() * 100,
      "name": "Ramesh M S",
      "prefill": {"contact": "", "email": ""}
    };
    try {
      razorpay.open(option);
    } catch (e) {
      print("ERROR IS " + e.toString());
    }
  }

  int cartvalueno() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("cart")
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        cartno = querySnapshot.docs.length;
      });
    });
    return cartno;
  }

  int? addressvalueno() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(MRANDMRS.sharedprefs!.getString("uid"))
        .collection("address")
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        addressid = querySnapshot.docs.length;
      });
    });
    return addressid;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
    List<Step> steps = [
      Step(
          title: Text("cart"),
          content: Address(),
          state: StepState.indexed,
          isActive: true),
      Step(
          title: Text("Address"),
          content: Address(),
          state: StepState.indexed,
          isActive: true),
      // Step(
      //     title: Text("Place Order"),
      //     content: PaymentPage(
      //       addressId: id,
      //       totalAmount: totalAmount.toDouble(),
      //       key: null,
      //     ),
      //     state: StepState.indexed,
      //     isActive: true)
    ];
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(Icons.arrow_back_ios_sharp,
      //           color: kBackgroundColor, size: 12)),
      //   leadingWidth: 25,
      //   title: Text(
      //     "Place Order",
      //     style: GoogleFonts.josefinSans(
      //       textStyle: TextStyle(
      //           fontWeight: FontWeight.w700,
      //           color: kBackgroundColor,
      //           fontSize: 20,
      //           letterSpacing: 0),
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/RYSwJQn/Untitled-1920-900-px.png",
                        ),
                        fit: BoxFit.cover)),
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mr & Mrs",
                        style: GoogleFonts.novaSlim(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25,
                              letterSpacing: 0),
                        ),
                      ),
                      Text(
                        "Design Wood Works",
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 11,
                              letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Row(
                  children: [
                    Text(
                      "cart",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                    Text(
                      " > ",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                    Text(
                      "Information",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                    Text(
                      " > ",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                    Text(
                      "Shipping",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                    Text(
                      " > ",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                    Text(
                      "Payment",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 13,
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Information",
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                                letterSpacing: 0.5),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          MRANDMRS.sharedprefs!.getString("name").toString(),
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 0.5),
                          ),
                        ),
                        Text(
                          MRANDMRS.sharedprefs!.getString("email").toString(),
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 15,
                                letterSpacing: 0.5),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 500,
                          width: 600,
                          child: Address(),
                          color: Colors.brown[50],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 900,
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: cartno * 180,
                            width: 500,
                            color: Colors.grey[100],
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection("users")
                                    .doc(MRANDMRS.sharedprefs!.getString("uid"))
                                    .collection("cart")
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: Text(
                                        'Loading...',
                                      ),
                                    );
                                  } else {
                                    return Scrollbar(
                                      isAlwaysShown: true,
                                      thickness: 10,

                                      //  controller: _s`crollController,
                                      child: ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          // gridDelegate:
                                          //     SliverGridDelegateWithFixedCrossAxisCount(
                                          //         crossAxisCount: 1),
                                          //   controller: _scrollController,
                                          itemCount: snapshot.data!.docs.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DetailProductScreens(
                                                                queryDocumentSnapshot:
                                                                    snapshot.data!
                                                                            .docs[
                                                                        index])));
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    // color: Color.fromRGBO(
                                                    //     230, 224, 215, 1),
                                                    border: Border.all(
                                                        color: Colors.black12),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0,
                                                                top: 15,
                                                                bottom: 15),
                                                        child: Expanded(
                                                          child: Container(
                                                            height: 100,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                                color: Colors
                                                                    .grey[200],
                                                                image: DecorationImage(
                                                                    image: NetworkImage(snapshot
                                                                            .data!
                                                                            .docs[index]
                                                                        [
                                                                        'mainimage']),
                                                                    fit: BoxFit
                                                                        .cover)),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      Container(
                                                        width: 200,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              height: 16,
                                                            ),
                                                            Text(
                                                              snapshot
                                                                  .data!
                                                                  .docs[index]
                                                                      ['name']
                                                                  .toString(),
                                                              style: GoogleFonts
                                                                  .dmSans(
                                                                textStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        13,
                                                                    letterSpacing:
                                                                        1),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Text(
                                                              snapshot.data!.docs[
                                                                          index]
                                                                      [
                                                                      'length'] +
                                                                  " * " +
                                                                  snapshot.data!
                                                                              .docs[
                                                                          index]
                                                                      [
                                                                      'width'] +
                                                                  "  CM",
                                                              style: GoogleFonts
                                                                  .dmSans(
                                                                textStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                    letterSpacing:
                                                                        0),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 4,
                                                            ),
                                                            Container(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Center(
                                                                    child: Text(
                                                                      "QUANTITY : ",
                                                                      style: GoogleFonts
                                                                          .lato(
                                                                        textStyle: TextStyle(
                                                                            fontWeight: FontWeight
                                                                                .w700,
                                                                            color: Colors
                                                                                .black54,
                                                                            fontSize:
                                                                                10,
                                                                            letterSpacing:
                                                                                1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Container(
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          snapshot
                                                                              .data!
                                                                              .docs[index]['quanity']
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.lato(
                                                                            textStyle: TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                letterSpacing: 1),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.grey[
                                                                              300],
                                                                          borderRadius: BorderRadius.circular(
                                                                              2)),
                                                                      height:
                                                                          20,
                                                                      width:
                                                                          20),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                ],
                                                              ),
                                                              height: 30,
                                                              width: 110,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                            ),
                                                            // SizedBox(
                                                            //   height: 0,
                                                            // ),

                                                            // Padding(
                                                            //   padding: const EdgeInsets
                                                            //           .only(
                                                            //       top: 8.0),
                                                            //   child: Center(
                                                            //     child: Text(
                                                            //       "Wood : " +
                                                            //           snapshot
                                                            //               .data!
                                                            //               .docs[index]['wood'],
                                                            //       style: GoogleFonts
                                                            //           .josefinSans(
                                                            //         textStyle: TextStyle(
                                                            //             fontWeight: FontWeight
                                                            //                 .w700,
                                                            //             color: Colors
                                                            //                 .black54,
                                                            //             fontSize:
                                                            //                 14,
                                                            //             letterSpacing:
                                                            //                 0),
                                                            //       ),
                                                            //     ),
                                                            //   ),
                                                            // ),
                                                            // SizedBox(
                                                            //   height: 10,
                                                            // ),
                                                          ],
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 10.0,
                                                                    top: 0),
                                                            child: Text(
                                                              "₹ " +
                                                                  snapshot
                                                                      .data!
                                                                      .docs[
                                                                          index]
                                                                          [
                                                                          'oprice']
                                                                      .toString(),
                                                              style: GoogleFonts
                                                                  .lato(
                                                                textStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    letterSpacing:
                                                                        0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 30,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    );
                                  }
                                }),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "SubTotal",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 1),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "₹ " + totalAmount.toString(),
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "Shipping",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 1),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Free",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "Taxes",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 1),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "₹ " + "453",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                              ),
                              Text(
                                "Total",
                                style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17,
                                      letterSpacing: 1),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "₹ " + totalAmount.toString(),
                                style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17,
                                      letterSpacing: 1),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => RazorPayWeb(
                                          id: addressid, price: totalAmount)));
                            },
                            child: Container(
                              height: 70,
                              width: 300,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  "CHECKOUT",
                                  style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 17,
                                        letterSpacing: 2),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),

              // Expanded(
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 30.0, bottom: 30),
              //     child: Theme(
              //       data: ThemeData(
              //           colorScheme: ColorScheme.light(
              //               primary: Colors.brown[900]!.withOpacity(0.4)),
              //           accentColor: Colors.grey,
              //           primaryColor: Colors.grey[600],
              //           buttonColor: Colors.brown),
              //       child: Stepper(
              //         currentStep: this.currentStep,
              //         steps: steps,
              //         type: StepperType.horizontal,
              //         onStepContinue: () {
              //           print(currentStep);
              //           if (currentStep == 0) {
              //             if (cartno == 0) {
              //               context.read<CartController>().cartvaluefinder();
              //               print("ITEMS ADDED SUCCESSFULLY");
              //             } else {
              //               setState(() {
              //                 print(totalAmount);
              //                 currentStep = currentStep + 1;
              //               });
              //             }
              //           } else if (currentStep == 1) {
              //             if (id == "") {
              //               print("SELECT ADDRESS");
              //             } else {
              //               setState(() {
              //                 currentStep = currentStep + 1;
              //               });
              //             }
              //             print("Hi Hlo");
              //             print("addresser" + id);
              //           } else if (currentStep == 2) {
              //             getPayment();
              //           }
              //           // print(currentStep);

              //           // setState(() {
              //           //   if (currentStep < steps.length - 1) {
              //           //     if (currentStep == 0) {
              //           //       if (cartno == 0) {
              //           //         Toast.show("Add Items to Place Order", context,
              //           //             duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              //           //         currentStep = currentStep;
              //           //       } else {
              //           //         currentStep = currentStep + 1;
              //           //       }
              //           //     } else if (currentStep == 1) {
              //           //       if (addressid == 0) {
              //           //         Toast.show("Add Address", context,
              //           //             duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              //           //             setState(() {
              //           //               //  currentStep = currentStep - 2;
              //           //             });

              //           //       } else {
              //           //         currentStep = currentStep + 1;
              //           //       }
              //           //     }
              //           //   } else {
              //           //     currentStep = 0;
              //           //   }
              //           // });
              //         },
              //         onStepCancel: () {
              //           print(currentStep);
              //           setState(() {
              //             if (currentStep == 0) {
              //               Navigator.pop(context);
              //             } else if (currentStep > 0) {
              //               currentStep = currentStep - 1;
              //             } else {
              //               currentStep = 0;
              //             }
              //           });
              //         },
              //         onStepTapped: (step) {
              //           setState(() {
              //             currentStep = step;
              //           });
              //         },
              //       ),
              //     ),
              //   ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
