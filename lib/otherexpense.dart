import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enhanced_drop_down/enhanced_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/helper.dart';

class otherexpense extends StatefulWidget {
  const otherexpense({  key }) : super(key: key);

  @override
  _otherexpenseState createState() => _otherexpenseState();
}

class _otherexpenseState extends State<otherexpense> {
  List expense = [];
  String? expensetype;
  TextEditingController expensecontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(

      body: Container(height: 150,color: Colors.white,
                                      child: Column(
                                        children: [
                                           Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width - 132,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(4)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0),
                              child: TextField(
                                textCapitalization:
                                    TextCapitalization.sentences,
                                style: TextStyle(color: Colors.black),
                                controller: expensecontroller,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Expense Type",
                                  labelStyle: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 12,
                                      letterSpacing: 2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      
                        GestureDetector(
                          onTap: (){
                            FirebaseFirestore.instance.collection("Expense")
                            .doc(expensecontroller.text.toUpperCase().trim().toString()).set({
                              "name":expensecontroller
                              .text.toUpperCase().trim().toString()
                            }).whenComplete((){
                             
                              // Navigator.pop(context);
                              Navigator.pop(context);
                              });
                          },
                          child: Container(height: 45,width:100,color: Colors.black,child: Center(
                            child: WidgetHelper.text("Update", 12, Colors.white,),),

                          ),
                        ),],
                                      ),
                                      ),
    ); }
}