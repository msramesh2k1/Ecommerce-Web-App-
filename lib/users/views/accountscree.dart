import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/Orders.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/Custom_Widgets.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';
import 'package:mrandmrs_ecom_webapp/helpers/mobilewidgets.dart';
import 'package:mrandmrs_ecom_webapp/helpers/responsive_widget.dart';

import 'Helper.dart';
import 'AddAddress.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveWidget(
      mobile: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                TopMovileNotifyBlackBox(),
                MobileTitleWebBox(),
                Box(height: 40, width: 0),
                Text(
                  "ACCOUNT",
                  style: GoogleFonts.dmSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 2),
                  ),
                ),
                Box(height: 30, width: 0),
                Text(
                  "Welcome Back " +
                      MRANDMRS.sharedprefs!.getString("name").toString(),
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 0.5),
                  ),
                ),
                Box(height: 30, width: 0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Orders()));
                          },
                          child: Text(
                            "VIEW ORDERS",
                            style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 13,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                        // Box(height: 20, width: 0),
                        // Container(
                        //   height: 200,
                        //   width: 350,
                        //   child: StreamBuilder<QuerySnapshot>(
                        //       stream: FirebaseFirestore.instance
                        //           .collection("users")
                        //           .doc(MRANDMRS.sharedprefs!.getString("uid"))
                        //           .collection("address")
                        //           .snapshots(),
                        //       builder: ((context, snapshot) {
                        //         return ListView.builder(
                        //             itemCount: snapshot.data!.docs.length,
                        //             itemBuilder: (context, index) {
                        //               if (snapshot.data!.docs.length == 0) {
                        //                 return Text(
                        //                   "No Address has been Saved !!",
                        //                   style: GoogleFonts.dmSans(
                        //                     textStyle: const TextStyle(
                        //                         fontWeight: FontWeight.normal,
                        //                         color: Colors.black54,
                        //                         fontSize: 13,
                        //                         letterSpacing: 2),
                        //                   ),
                        //                 );
                        //               }
                        //               return Padding(
                        //                 padding:
                        //                     const EdgeInsets.only(bottom: 2.0),
                        //                 child: Container(
                        //                   height: 80,
                        //                   width: 500,
                        //                   decoration: BoxDecoration(
                        //                       border: Border.all(
                        //                           color: Colors.black)),
                        //                   child: Column(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.center,
                        //                     children: [
                        //                       Row(
                        //                         children: [
                        //                           SizedBox(
                        //                             width: 10,
                        //                           ),
                        //                           Center(
                        //                             child: Text(
                        //                               snapshot.data!.docs[index]
                        //                                       ['flatNumber'] +
                        //                                   "\n" +
                        //                                   snapshot.data!
                        //                                           .docs[index]
                        //                                       ['street1'] +
                        //                                   "\n" +
                        //                                   snapshot.data!
                        //                                           .docs[index]
                        //                                       ['city'] +
                        //                                   ", " +
                        //                                   snapshot.data!
                        //                                           .docs[index]
                        //                                       ['pincode'] +
                        //                                   "\n" +
                        //                                   snapshot.data!
                        //                                           .docs[index]
                        //                                       ['state'],
                        //                               textAlign: TextAlign.left,
                        //                               style: GoogleFonts.dmSans(
                        //                                 textStyle:
                        //                                     const TextStyle(
                        //                                         fontWeight:
                        //                                             FontWeight
                        //                                                 .normal,
                        //                                         color: Colors
                        //                                             .black45,
                        //                                         fontSize: 13,
                        //                                         letterSpacing:
                        //                                             0.5),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                     ],
                        //                   ),
                        //                 ),
                        //               );
                        //             });
                        //       })),
                        // ),
                      ],
                    ),
                    Box(height: 40, width: 0),
                    Container(
                      width: 400,
                      height: 340,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ADDRESS",
                                style: GoogleFonts.dmSans(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 13,
                                      letterSpacing: 2),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Box(height: 8, width: 0),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Container(
                                          width: 400,
                                          height: 800,
                                          child: AddAddress()),
                                    );
                                  });
                            },
                            child: Text(
                              "Add New Address",
                              style: GoogleFonts.dmSans(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black45,
                                    height: 2,
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                    letterSpacing: 0),
                              ),
                            ),
                          ),
                          Container(
                            height: 600,
                            width: MediaQuery.of(context).size.width,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection("users")
                                    .doc(MRANDMRS.sharedprefs!.getString("uid"))
                                    .collection("address")
                                    .snapshots(),
                                builder: ((context, snapshot) {
                                  return ListView.builder(
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder: (context, index) {
                                        if (snapshot.data!.docs.length == 0) {
                                          return Text(
                                            "No Address has been Saved !!",
                                            style: GoogleFonts.dmSans(
                                              textStyle: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black54,
                                                  fontSize: 13,
                                                  letterSpacing: 2),
                                            ),
                                          );
                                        }
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Container(
                                            height: 80,
                                            width: 500,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Center(
                                                      child: Text(
                                                        snapshot.data!
                                                                    .docs[index]
                                                                ['flatNumber'] +
                                                            "\n" +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['street1'] +
                                                            "\n" +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['city'] +
                                                            ", " +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['pincode'] +
                                                            "\n" +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['state'],
                                                        textAlign:
                                                            TextAlign.left,
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Colors
                                                                      .black45,
                                                                  fontSize: 13,
                                                                  letterSpacing:
                                                                      0.5),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                })),
                          ),
                          Box(height: 10, width: 0),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontSize: 13,
                                          letterSpacing: 0),
                                    ),
                                  ),
                                ),
                              ),
                              Box(height: 0, width: 20),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                  child: Text(
                                    "Delete",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontSize: 13,
                                          letterSpacing: 0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Box(height: 40, width: 0),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width - 30,
                  child: Center(
                    child: Text(
                      "LOGOUT",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(204, 191, 171, 1),
                      border:
                          Border.all(color: Color.fromRGBO(204, 191, 171, 1))),
                ),
                Box(height: 10, width: 0),
                Box(height: 40, width: 0),
                MobileEndBox()
              ],
            ),
            color: Colors.white),
      ),
      tab: Container(),
      desktop: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                TopNotifyBlackBox(),
                TitleWebBox(),
                Box(height: 40, width: 0),
                Text(
                  "ACCOUNT",
                  style: GoogleFonts.dmSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 2),
                  ),
                ),
                Box(height: 30, width: 0),
                Text(
                  "Welcome Back " +
                      MRANDMRS.sharedprefs!.getString("name").toString(),
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 0.5),
                  ),
                ),
                Box(height: 30, width: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "ORDERS",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 13,
                                letterSpacing: 2),
                          ),
                        ),
                        Box(height: 20, width: 0),
                        Text(
                          "No Orders has been placed !!",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                                fontSize: 13,
                                letterSpacing: 2),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 200,
                      height: 560,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "ADDRESS",
                                style: GoogleFonts.dmSans(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 13,
                                      letterSpacing: 2),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Box(height: 8, width: 0),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Container(
                                          width: 400,
                                          height: 800,
                                          child: AddAddress()),
                                    );
                                  });
                            },
                            child: Text(
                              "Add New Address",
                              style: GoogleFonts.dmSans(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black45,
                                    height: 2,
                                    decoration: TextDecoration.underline,
                                    fontSize: 12,
                                    letterSpacing: 0),
                              ),
                            ),
                          ),
                          Box(height: 8, width: 0),
                          Container(
                            height: 305,
                            width: 600,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection("users")
                                    .doc(MRANDMRS.sharedprefs!.getString("uid"))
                                    .collection("address")
                                    .snapshots(),
                                builder: ((context, snapshot) {
                                  return ListView.builder(
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 80,
                                            width: 600,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Center(
                                                      child: Text(
                                                        snapshot.data!.docs[index]
                                                                ['flatNumber'] +
                                                            "\n" +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['street1'] +
                                                            "\n" +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['city'] +
                                                            ", " +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['pincode'] +
                                                            "\n" +
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['state'],
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.dmSans(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Colors
                                                                      .black45,
                                                                  fontSize: 13,
                                                                  letterSpacing:
                                                                      0.5),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                })),
                          ),
                          Box(height: 10, width: 0),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontSize: 13,
                                          letterSpacing: 0),
                                    ),
                                  ),
                                ),
                              ),
                              Box(height: 0, width: 20),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54)),
                                child: Center(
                                  child: Text(
                                    "Delete",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontSize: 13,
                                          letterSpacing: 0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Box(height: 40, width: 0),
                Container(
                  height: 45,
                  width: 400,
                  child: Center(
                    child: Text(
                      "LOGOUT",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(204, 191, 171, 1),
                      border:
                          Border.all(color: Color.fromRGBO(204, 191, 171, 1))),
                ),
                Box(height: 10, width: 0),
                Box(height: 40, width: 0),
                EndBox()
              ],
            ),
            color: Colors.white),
      ),
    ));
  }
}
