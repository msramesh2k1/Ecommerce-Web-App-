import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/Custom_Widgets.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                "REGISTER",
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
                "Please fill in the information below:",
                style: GoogleFonts.dmSans(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 14,
                      letterSpacing: 0.5),
                ),
              ),
              Box(height: 30, width: 0),
              Container(
                height: 45,
                width: 400,
                child: Row(
                  children: [
                    Text(
                      "   Full Name",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black45,
                            fontSize: 14,
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              Box(height: 15, width: 0),
              Container(
                height: 45,
                width: 400,
                child: Row(
                  children: [
                    Text(
                      "   Email",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black45,
                            fontSize: 14,
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              Box(height: 15, width: 0),
              Container(
                height: 45,
                width: 400,
                child: Row(
                  children: [
                    Text(
                      "   Password",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black45,
                            fontSize: 14,
                            letterSpacing: 0),
                      ),
                    ),
                  ],
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              Box(height: 10, width: 0),
              Container(
                height: 45,
                width: 400,
                child: Center(
                  child: Text(
                    "CREATE ACCOUNT",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account ?",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0),
                    ),
                  ),
                  Text(
                    " Login",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0),
                    ),
                  ),
                ],
              ),
              Box(height: 40, width: 0),
              EndBox()
            ],
          ),
          color: Colors.white),
    ));
  }
}
