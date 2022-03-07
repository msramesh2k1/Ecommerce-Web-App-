import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/Helper.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/accountscree.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/registerpage.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/Custom_Widgets.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';

import '../ErrorAlert.dart';
import '../HomePage.dart';
import '../forgotpassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool _password = true;
  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController resetemailtexteditingcontroller =
      new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _password = false;
  }

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
                "LOGIN",
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
                "Please Enter Your e-mail and password",
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    style: TextStyle(color: kBackgroundColor, fontSize: 14),
                    cursorColor: kBackgroundColor,
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          fontFamily: 'lato',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    ),
                  ),
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              Box(height: 15, width: 0),
              Container(
                height: 45,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    style: TextStyle(color: kBackgroundColor, fontSize: 14),
                    cursorColor: kBackgroundColor,
                    controller: passwordcontroller,
                    obscureText: !_password,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                            _password ? Icons.visibility : Icons.visibility_off,
                            color: kBackgroundColor,
                            size: 18),
                        onPressed: () {
                          setState(() {
                            _password = !_password;
                          });
                        },
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'lato',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    ),
                  ),
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              Box(height: 10, width: 0),
              GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => ForgetPassword());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Forget Password ?",
                  style: GoogleFonts.dmSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black45,
                        fontSize: 14,
                        letterSpacing: 0),
                  ),
                ),
              ),
              Box(height: 10, width: 0),
              GestureDetector(
                onTap: () {
                  emailcontroller.text.isNotEmpty &&
                          passwordcontroller.text.isNotEmpty
                      ? _loginform()
                      : showDialog(
                          context: context,
                          builder: (c) {
                            return ErrorAlertDialog(
                                message: "Provide Email and Password");
                          });
                },
                child: Container(
                  height: 45,
                  width: 400,
                  child: Center(
                    child: Text(
                      "LOGIN",
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
              ),
              Box(height: 10, width: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => RegisterScreen());
                      Navigator.pushReplacement(context, route);
                    },
                    child: Text(
                      " Create one",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0),
                      ),
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

  Future<void> _loginform() async {
    User firebaseUser;
    await auth
        .signInWithEmailAndPassword(
            email: emailcontroller.text, password: passwordcontroller.text)
        .then((authUser) {
      var snackBar = SnackBar(
          backgroundColor: Colors.white,
          content: Container(
            height: 20,
            child: Center(
                child: Text(
              'LoggedIn Successfully',
              style: TextStyle(color: Colors.black, letterSpacing: 1),
            )),
          ));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      firebaseUser = authUser.user!;
      readData(firebaseUser);
    }).catchError((error) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlertDialog(
              message: error.message.toString(),
            );
          });
    });
  }

  readData(User fUser) async {
    FirebaseFirestore.instance
        .collection("users")
        .doc(fUser.uid)
        .get()
        .then((dataSnapshot) async {
      // MRANDMRS.firestore
      //     .collection("users")
      //     .doc(fUser.uid)
      //     .collection("CartItems")
      //     .get()
      //     .then((value) => value.docs.forEach((element) async {
      //           await MRANDMRS.sharedPreferences.setString(
      //               element.data()["title"],
      //               element.data()["Quantity"].toString());
      //           print(element.data()["title"]);

      //           print(element.data());
      //         }));
      await MRANDMRS.sharedprefs!.setString("uid", dataSnapshot.data()!["uid"]);
      await MRANDMRS.sharedprefs!
          .setString("email", dataSnapshot.data()!["email"]);
      await MRANDMRS.sharedprefs!
          .setString("name", dataSnapshot.data()!["name"]);
    }).whenComplete(() {
      Route route = MaterialPageRoute(builder: (context) => AccountScreen());
      Navigator.pushReplacement(context, route);
    });
  }
}
