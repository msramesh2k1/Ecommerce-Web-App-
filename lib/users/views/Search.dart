import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/Detailer.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';
import 'package:mrandmrs_ecom_webapp/detailproductscreen.dart';
import 'package:mrandmrs_ecom_webapp/helpers/mobilewidgets.dart';
import 'package:mrandmrs_ecom_webapp/helpers/responsive_widget.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchcontroller = new TextEditingController();
  String name = '';
  List _category = ["chair", "bed", "sofa"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ResponsiveWidget(
          desktop: Container(
            child: Column(
              children: [
                TopMovileNotifyBlackBox(),
                MobileTitleWebBox(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.brown[50],
                        borderRadius: BorderRadius.circular(7)),
                    height: 50,
                    width: MediaQuery.of(context).size.width-40,
                    child: Padding(
                      padding: const EdgeInsets.only(left:50.0),
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                        // cursorColor: Colors.red[900],
                        controller: searchcontroller,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          // border: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.black,width:5)),
                          hintText: "Search here",
                          hintStyle:
                              TextStyle(color: Colors.grey, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // child: ListView.builder(
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: resultlist.length,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return GestureDetector(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => DetailScreen(
                    //                         queryDocumentSnapshot:
                    //                             resultlist[index],
                    //                       )));
                    //         },
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(5.0),
                    //           child: Container(
                    //             decoration: BoxDecoration(
                    //               color: Colors.black,
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //             child: Row(
                    //               children: [
                    //                 SizedBox(
                    //                   width: 20,
                    //                 ),
                    //                 //  Container(
                    //                 //         height: 120,
                    //                 //         width: 120,
                    //                 //         decoration: BoxDecoration(
                    //                 //             image: DecorationImage(
                    //                 //                 image: NetworkImage(
                    //                 //                   resultlist[index].data()['image']
                    //                 //                  ),
                    //                 //                 fit: BoxFit.fill),
                    //                 //             color: Colors.grey.shade300,
                    //                 //             borderRadius:
                    //                 //                 BorderRadius.circular(20)),
                    //                 //       ),

                    //                 Text(
                    //                   resultlist[index].data()['name'],
                    //                   style: GoogleFonts.lato(
                    //                     textStyle: TextStyle(
                    //                         fontWeight: FontWeight.normal,
                    //                         color: Colors.white,
                    //                         fontSize: 14,
                    //                         letterSpacing: 2),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             height: 80,
                    //           ),
                    //         ),
                    //       );
                    //     }),

                    child: StreamBuilder<QuerySnapshot>(
                      stream: (name != "" && name != null)
                          ? FirebaseFirestore.instance
                              .collection("SearchProducts")
                              .where('search', arrayContains: name)
                              .snapshots()
                          : FirebaseFirestore.instance
                              .collection("SearchProducts")
                              .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: Text("Loading"));
                        } else {
                          return GridView.count(
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 4,
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot documentSnapshot) {
                              Map<String, dynamic> data = documentSnapshot
                                  .data()! as Map<String, dynamic>;

                              return Container(
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailProductScreens(queryDocumentSnapshot: documentSnapshot)));
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    data["mainimage"])),
                                            color: Colors.brown[50]!.withOpacity(0.9),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Center(
                                          child: Text(
                                            data['name'],
                                            style: GoogleFonts.josefinSans(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: kBackgroundColor,
                                                  fontSize: 14,
                                                  letterSpacing: 0),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          tab: Container(),
          mobile: Container(
            child: Column(
              children: [
                TopMovileNotifyBlackBox(),
                MobileTitleWebBox(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.brown[50],
                        borderRadius: BorderRadius.circular(7)),
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                        // cursorColor: Colors.red[900],
                        controller: searchcontroller,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          // border: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.black,width:5)),
                          hintText: "Search here",
                          hintStyle:
                              TextStyle(color: Colors.grey, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // child: ListView.builder(
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: resultlist.length,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return GestureDetector(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => DetailScreen(
                    //                         queryDocumentSnapshot:
                    //                             resultlist[index],
                    //                       )));
                    //         },
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(5.0),
                    //           child: Container(
                    //             decoration: BoxDecoration(
                    //               color: Colors.black,
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //             child: Row(
                    //               children: [
                    //                 SizedBox(
                    //                   width: 20,
                    //                 ),
                    //                 //  Container(
                    //                 //         height: 120,
                    //                 //         width: 120,
                    //                 //         decoration: BoxDecoration(
                    //                 //             image: DecorationImage(
                    //                 //                 image: NetworkImage(
                    //                 //                   resultlist[index].data()['image']
                    //                 //                  ),
                    //                 //                 fit: BoxFit.fill),
                    //                 //             color: Colors.grey.shade300,
                    //                 //             borderRadius:
                    //                 //                 BorderRadius.circular(20)),
                    //                 //       ),

                    //                 Text(
                    //                   resultlist[index].data()['name'],
                    //                   style: GoogleFonts.lato(
                    //                     textStyle: TextStyle(
                    //                         fontWeight: FontWeight.normal,
                    //                         color: Colors.white,
                    //                         fontSize: 14,
                    //                         letterSpacing: 2),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //             height: 80,
                    //           ),
                    //         ),
                    //       );
                    //     }),

                    child: StreamBuilder<QuerySnapshot>(
                      stream: (name != "" && name != null)
                          ? FirebaseFirestore.instance
                              .collection("SearchProducts")
                              .where('index', arrayContains: name)
                              .snapshots()
                          : FirebaseFirestore.instance
                              .collection("SearchProducts")
                              .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: Text("Loading"));
                        } else {
                          return GridView.count(
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 2,
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot documentSnapshot) {
                              Map<String, dynamic> data = documentSnapshot
                                  .data()! as Map<String, dynamic>;

                              return Container(
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => DetailScreen(
                                      //               // queryDocumentSnapshot:
                                      //               //     documentSnapshot,
                                      //             )));
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 110,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    data["mainimage"])),
                                            color: Colors.brown[100],
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Center(
                                          child: Text(
                                            data['name'],
                                            style: GoogleFonts.josefinSans(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: kBackgroundColor,
                                                  fontSize: 14,
                                                  letterSpacing: 0),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
