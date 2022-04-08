import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'Helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class AddAddress extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final scafoldKey = GlobalKey<ScaffoldState>();
  final addressName = TextEditingController();
  final addressPhoneNumber = TextEditingController();
  final addressFlatNumber = TextEditingController();
  final addressstreet1 = TextEditingController();
  final addressstreet2 = TextEditingController();
  final addressDistrict = TextEditingController();
  final addressstate = TextEditingController();
  final addresscountry = TextEditingController();
  final addresspincode = TextEditingController();

  String addressid = DateTime.now().millisecondsSinceEpoch.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
                  "  ADD ADDRESS",
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 1),
                  ),
                ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(EvaIcons.close,
                color: Colors.black, size: 20)),
   
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      key: scafoldKey,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
         
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "  Contact Info",
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 16,
                            letterSpacing: 0),
                      ),
                    ),
                    MyTextField(
                        hint: "Name",
                        controller: addressName,
                        height: 55,
                        width: MediaQuery.of(context).size.width),
                    MyTextField(
                        hint: "Phone Number",
                        controller: addressPhoneNumber,
                        height: 55,
                        width: MediaQuery.of(context).size.width)
                  ],
                ),
              ),
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "  Address Info",
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 16,
                            letterSpacing: 0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyTextField(
                          hint: "Pincode",
                          width: 100,
                          controller: addresspincode,
                          height: 55,
                        ),
                        Expanded(
                          child: MyTextField(
                            hint: "City",
                            width: 100,
                            controller: addressDistrict,
                            height: 55,
                          ),
                        ),
                      ],
                    ),
                    MyTextField(
                      hint: "State",
                      controller: addressstate,
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                    ),
                    MyTextField(
                      hint: "Locality / Area / Street",
                      width: MediaQuery.of(context).size.width,
                      controller: addressstreet1,
                      height: 55,
                    ),
                    MyTextField(
                      hint: "Flat No / Building Name",
                      width: MediaQuery.of(context).size.width,
                      controller: addressFlatNumber,
                      height: 55,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap: () {
                          FirebaseFirestore.instance
                              .collection("users")
                              .doc(MRANDMRS.sharedprefs!.getString("uid"))
                              .collection("address")
                              .doc(DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString())
                              .set({
                            "id": addressid.toString(),
                            "name": addressName.text.trim(),
                            "street1": addressstreet1.text.trim(),
                            "country": addresscountry.text.trim(),
                            "state": addressstate.text.trim(),
                            "pincode": addresspincode.text.trim(),
                            "phoneNumber": addressPhoneNumber.text.trim(),
                            "flatNumber": addressFlatNumber.text.trim(),
                            "city": addressDistrict.text.trim(),
                          }).then((value) {
                            EasyLoading.showToast("Success");
                          });
                          //     Navigator.pop(context);
                        },
                        child: Container(
                          height: 55,
                          child: Center(
                            child: Text(
                              "Save Address",
                              style: GoogleFonts.dmSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              color: Colors.white,
            ),
          ],
        )),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final int height;
  final double width;

  MyTextField(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4, right: 4, top: 4),
        child: Container(
            height: 45,
            width: width,
            padding: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.brown[50],
            ),
            child: Container(
              height: 55,
              child: TextFormField(
                textCapitalization: TextCapitalization.characters,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: hint,
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ),
            )));
  }
}
