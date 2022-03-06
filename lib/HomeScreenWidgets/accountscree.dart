import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/Custom_Widgets.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
                "Welcome Back Ramesh M S",
                style: GoogleFonts.dmSans(
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
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Box(height: 10, width: 0),
                        Text(
                          "4/2/6A RSPR Nagar \nKTC Nagar West \nThoothukudi , 628002",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45,
                                fontSize: 13,
                                letterSpacing: 2),
                          ),
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
    ));
  }
}
