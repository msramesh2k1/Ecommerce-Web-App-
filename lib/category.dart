import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Detailer.dart';
import 'Widgets/helper.dart';

class categorypage extends StatefulWidget {
  final QueryDocumentSnapshot queryDocumentSnapshot;
  categorypage({required this.queryDocumentSnapshot});
  @override
  _categorypageState createState() => _categorypageState();
}

class _categorypageState extends State<categorypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading:  IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_sharp,
                    color: Colors.black, size: 12)),
        
        
        backgroundColor:Colors.white,
      title:  WidgetHelper.subtext(widget.queryDocumentSnapshot['name'], 12, Colors.black)
                  ,),
  
      body: Container(
         decoration: BoxDecoration(
             
                  color: Colors.white,
            ),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                    child: Container(
                     
          
                      height: MediaQuery.of(context).size.height,
                      child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection("SearchProducts")
                                .where("category",isEqualTo: widget.queryDocumentSnapshot['name'])
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                return Scrollbar(
                                 
                                  child: GridView.builder(
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                               MediaQuery.of(context).size.width > 800 ? 5 : 2),
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (c) => Detailer(
                              //               queryDocumentSnapshot:
                              //                   snapshot.data!.docs[index],
                              //             )));
                            },
                            child: Column(
                              children: [
                                     Text(
                                  snapshot.data!.docs[index]['id'],
                                  style: GoogleFonts.josefinSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        fontSize: 10,
                                        letterSpacing: 0),
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Container(
                                  height:
                                      180,
                                  decoration: BoxDecoration(
            
                                      borderRadius:
                                          BorderRadius.circular(5),
                                          border: Border.all(color: Colors.black54),
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                          image: NetworkImage(snapshot
                                              .data
                                              !.docs[index]['mainimage']),
                                          fit: BoxFit.contain)),
                                ),
                                Text(
                                  snapshot.data!.docs[index]['name'],
                                  style: GoogleFonts.josefinSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                                );
                              }
                            }),
                    ),
        ),
      ),
    );
  }
}