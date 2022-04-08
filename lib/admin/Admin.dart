import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/users/views/loginpage.dart';
import 'package:mrandmrs_ecom_webapp/admin/uploader.dart';
import 'package:url_launcher/url_launcher.dart';


import 'add_category.dart';
import 'addwood.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  String? selected = "Add Wood";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleAdminWebBox(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => addcategory()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = "Add Category";
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  //shape: BoxShape.circle,
                                  color: Color.fromRGBO(230, 224, 215, 1),
                                ),
                                height: 40,
                                width: 200,
                                //  width:20,

                                child: Center(
                                  child: Text(
                                    "Add Category",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black45,
                                          fontSize: 14,
                                          letterSpacing: 0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            selected == "Add Category"
                                ? Container(
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 100,
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => addwood()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print(selected);
                                setState(() {
                                  selected = "Add Wood";
                                });
                                print(selected);
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  //shape: BoxShape.circle,
                                  color: Color.fromRGBO(230, 224, 215, 1),
                                ),
                                height: 40,
                                width: 200,
                                //  width:20,

                                child: Center(
                                  child: Text(
                                    "Add Wood",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black45,
                                          fontSize: 14,
                                          letterSpacing: 0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            selected == "Add Wood"
                                ? Container(
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 100,
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminPanel()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            //shape: BoxShape.circle,
                            color: Color.fromRGBO(230, 224, 215, 1),
                          ),
                          height: 40,
                          width: 200,
                          //  width:20,

                          child: Center(
                            child: Text(
                              "Add Items",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black45,
                                    fontSize: 14,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 400,
                  child: selected == "Add Category" ? addcategory() : addwood(),
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(230, 224, 215, 1)))
            ],
          ),
        ),
      ),
    );
  }
}
