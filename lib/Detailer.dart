// import 'dart:ui';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:enhanced_drop_down/enhanced_drop_down.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:mrandmrs_ecom_webapp/Helper.dart';
// import 'package:mrandmrs_ecom_webapp/constants.dart';
// import 'package:universal_html/html.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'Widgets/helper.dart';

// class Detailer extends StatefulWidget {
//   final DocumentSnapshot queryDocumentSnapshot;
//   Detailer({required this.queryDocumentSnapshot});

//   @override
//   _DetailerState createState() => _DetailerState();
// }

// class _DetailerState extends State<Detailer> {

//   TextEditingController namecontroller = TextEditingController();
  
// @override
//   Widget build(BuildContext context) {
   

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.blueGrey[200],
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: new NetworkImage(
//                     "https://images.pexels.com/photos/4178806/pexels-photo-4178806.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
//                 // "https://i.ibb.co/3fT5Zb2/Modern-living-room-interior-with-sofa-and-green-plants-lamp-table-on-dark-wall-background-3d-renderi.jpg"),
//                 fit: BoxFit.cover),
//           ),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           icon: Icon(Icons.arrow_back_ios_sharp,
//                               color: Colors.black, size: 12)),
//                       Text(
//                         widget.queryDocumentSnapshot['name'],
//                         style: GoogleFonts.josefinSans(
//                           textStyle: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               fontSize: 18,
//                               letterSpacing: 0),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 25.0, right: 25, top: 20, bottom: 50),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white70,
//                           borderRadius: BorderRadius.circular(4)),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                             left: 25.0, right: 25, top: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Container(
//                               height: 20,
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: 3,
//                                   ),
//                                   GestureDetector(
//                                     onTap: () {
//                                       showDialog(
//                                           context: context,
//                                           builder: (BuildContext context) {
//                                             return Dialog(
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                 ),
//                                                 elevation: 0,
//                                                 backgroundColor:
//                                                     Colors.transparent,
//                                                 child: Container(
//                                                   height: 180,
//                                                   width: 400,
//                                                   decoration: BoxDecoration(
//                                                     shape: BoxShape.rectangle,
//                                                     color: Colors.grey[100],
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4),
//                                                   ),
//                                                   child: Column(
//                                                     children: <Widget>[
//                                                       SizedBox(
//                                                         height: 20,
//                                                       ),
//                                                       Text(
//                                                         "Edit Info",
//                                                         style: GoogleFonts
//                                                             .josefinSans(
//                                                           textStyle: TextStyle(
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .bold,
//                                                               color:
//                                                                   Colors.black,
//                                                               fontSize: 18,
//                                                               letterSpacing: 0),
//                                                         ),
//                                                       ),
//                                                       Padding(
//                                                         padding:
//                                                             const EdgeInsets
//                                                                 .all(10.0),
//                                                         child: Container(
//                                                           height: 50,
//                                                           width: 300,
//                                                           decoration: BoxDecoration(
//                                                               color:
//                                                                   Colors.white,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           4)),
//                                                           child: Padding(
//                                                             padding:
//                                                                 const EdgeInsets
//                                                                         .symmetric(
//                                                                     horizontal:
//                                                                         8.0),
//                                                             child: TextField(
//                                                               textCapitalization:
//                                                                   TextCapitalization
//                                                                       .sentences,
//                                                               style: TextStyle(
//                                                                   color: Colors
//                                                                       .black),
                                                             
//                                                               keyboardType:
//                                                                   TextInputType
//                                                                       .name,
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     InputBorder
//                                                                         .none,
//                                                                 labelText:
//                                                                     "Product Name",
//                                                                 labelStyle: TextStyle(
//                                                                     color: Colors
//                                                                         .black,
//                                                                     fontSize:
//                                                                         12,
//                                                                     letterSpacing:
//                                                                         0),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       SizedBox(
//                                                         height: 10,
//                                                       ),
                                                     
//                                                     ],
//                                                   ),
//                                                 ));
//                                           });
//                                     },
//                                     child: Text(
//                                       widget.queryDocumentSnapshot['category']
//                                               .toUpperCase() +
//                                           "  >  " +
//                                           widget.queryDocumentSnapshot['name']
//                                               .toUpperCase(),
//                                       style: GoogleFonts.josefinSans(
//                                         textStyle: TextStyle(
//                                             fontWeight: FontWeight.w900,
//                                             color: Colors.black,
//                                             fontSize: 14,
//                                             letterSpacing: 0),
//                                       ),
//                                     ),
//                                   ),
//                                   GestureDetector(
//                                     // onTap: () {
//                                     //   showDialog(
//                                     //       context: context,
//                                     //       builder: (BuildContext context) {
//                                     //         return Dialog(
//                                     //             shape: RoundedRectangleBorder(
//                                     //               borderRadius:
//                                     //                   BorderRadius.circular(20),
//                                     //             ),
//                                     //             elevation: 0,
//                                     //             backgroundColor: Colors.transparent,
//                                     //             child: Container(
//                                     //               height: MediaQuery.of(context)
//                                     //                       .size
//                                     //                       .height -
//                                     //                   50,
//                                     //               width: MediaQuery.of(context)
//                                     //                       .size
//                                     //                       .width -
//                                     //                   20,
//                                     //               decoration: BoxDecoration(
//                                     //                 shape: BoxShape.rectangle,
//                                     //                 color: Colors.grey[100],
//                                     //                 borderRadius:
//                                     //                     BorderRadius.circular(5),
//                                     //               ),
//                                     //               child: Column(
//                                     //                 children: <Widget>[
//                                     //                   SizedBox(
//                                     //                     height: 20,
//                                     //                   ),
//                                     //                   Text(
//                                     //                     "EDIT INFO",
//                                     //                     style: GoogleFonts.josefinSans(
//                                     //                       textStyle: TextStyle(
//                                     //                           fontWeight:
//                                     //                               FontWeight.w700,
//                                     //                           color: Colors.black,
//                                     //                           fontSize: 18,
//                                     //                           letterSpacing: 1),
//                                     //                     ),
//                                     //                   ),
//                                     //                   Padding(
//                                     //                     padding:
//                                     //                         const EdgeInsets.all(10.0),
//                                     //                     child: Container(
//                                     //                       height: 50,
//                                     //                       width: 300,
//                                     //                       decoration: BoxDecoration(
//                                     //                           color: Colors.brown[50],
//                                     //                           borderRadius:
//                                     //                               BorderRadius.circular(
//                                     //                                   10)),
//                                     //                       child: Padding(
//                                     //                         padding: const EdgeInsets
//                                     //                                 .symmetric(
//                                     //                             horizontal: 8.0),
//                                     //                         child: TextField(
//                                     //                           textCapitalization:
//                                     //                               TextCapitalization
//                                     //                                   .sentences,
//                                     //                           style: TextStyle(
//                                     //                               color: Colors.black),
//                                     //                           controller:
//                                     //                               namecontroller,
//                                     //                           keyboardType:
//                                     //                               TextInputType.name,
//                                     //                           decoration:
//                                     //                               InputDecoration(
//                                     //                             border:
//                                     //                                 InputBorder.none,
//                                     //                             labelText: "ID",
//                                     //                             labelStyle: TextStyle(
//                                     //                                 color:
//                                     //                                     Colors.black38,
//                                     //                                 fontSize: 12,
//                                     //                                 letterSpacing: 2),
//                                     //                           ),
//                                     //                         ),
//                                     //                       ),
//                                     //                     ),
//                                     //                   ),
//                                     //                   GestureDetector(
//                                     //                     onTap: () {
//                                     //                       setState(() {
//                                     //                         FirebaseFirestore.instance
//                                     //                             .collection("Items")
//                                     //                             .doc(widget
//                                     //                                     .queryDocumentSnapshot[
//                                     //                                 'category'])
//                                     //                             .collection("Products")
//                                     //                             .doc(widget
//                                     //                                     .queryDocumentSnapshot[
//                                     //                                 'id'])
//                                     //                             .update({
//                                     //                           "id": namecontroller.text
//                                     //                               .toString()
//                                     //                         }).then((value) {
//                                     //  Navigator.pop(context);
//                                     //                           //   Phoenix.rebirth(context);
//                                     //                           Navigator.pushReplacement(
//                                     //                               context,
//                                     //                               MaterialPageRoute(
//                                     //                                   builder: (c) {
//                                     //                             return Homer();
//                                     //                           }));
//                                     //                         });
//                                     //                       });
//                                     //                     },
//                                     //                     child: Container(
//                                     //                         height: 30,
//                                     //                         width: 100,
//                                     //                         child: Center(
//                                     //                           child: Text(
//                                     //                             "update",
//                                     //                             style: GoogleFonts
//                                     //                                 .josefinSans(
//                                     //                               textStyle: TextStyle(
//                                     //                                   fontWeight:
//                                     //                                       FontWeight
//                                     //                                           .w700,
//                                     //                                   color:
//                                     //                                       Colors.black,
//                                     //                                   fontSize: 11,
//                                     //                                   letterSpacing: 1),
//                                     //                             ),
//                                     //                           ),
//                                     //                         ),
//                                     //                         decoration: BoxDecoration(
//                                     //                             color: Colors.brown[50],
//                                     //                             borderRadius:
//                                     //                                 BorderRadius
//                                     //                                     .circular(10))),
//                                     //                   )
//                                     //                 ],
//                                     //               ),
//                                     //             ));
//                                     //       });
//                                     // },
//                                     child: Text(
//                                       "  / PRODUCT NO : " +
//                                           widget.queryDocumentSnapshot['id'],
//                                       style: GoogleFonts.josefinSans(
//                                         textStyle: TextStyle(
//                                             fontWeight: FontWeight.w900,
//                                             color: Colors.black,
//                                             fontSize: 14,
//                                             letterSpacing: 1),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 20),
                           
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   "Images",
//                                   style: GoogleFonts.josefinSans(
//                                     textStyle: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black,
//                                         fontSize: 16,
//                                         letterSpacing: 0),
//                                   ),
//                                 ),
                               
                                     
//                               ],
//                             ),
//                             SizedBox(
//                               height: 1,
//                             ),
                            
//                             // widget.queryDocumentSnapshot['topimage'] !=  null &&   widget.queryDocumentSnapshot['sideimage'] != null ?  Text(
//                             //                       "Specification Images",
//                             //                       style: GoogleFonts.josefinSans(
//                             //                         textStyle: TextStyle(
//                             //                             fontWeight: FontWeight.bold,
//                             //                             color: Colors.black,
//                             //                             fontSize: 18,
//                             //                             letterSpacing: 0),
//                             //                       ),
//                             //                     ) : SizedBox(),
//                             Container(
//                               width: 448,
//                               decoration: BoxDecoration(
//                                   color: Colors.white70,
//                                   borderRadius: BorderRadius.circular(4)),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(20.0),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       child:
//                                           widget.queryDocumentSnapshot[
//                                                       'topimage'] !=
//                                                   null
//                                               ? Column(
//                                                   children: [
//                                                     Row(
//                                                       children: [
                                                        
                                                       
                                                             
//                                                       ],
//                                                     ),
//                                                     SizedBox(height: 15),
//                                                     GestureDetector(
//                                                       onTap: () {
//                                                         showDialog(
//                                                             context: context,
//                                                             builder:
//                                                                 (BuildContext
//                                                                     context) {
//                                                               return Dialog(
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20),
//                                                                   ),
//                                                                   elevation: 0,
//                                                                   backgroundColor:
//                                                                       Colors
//                                                                           .transparent,
//                                                                   child: Container(
//                                                                       height: MediaQuery.of(context).size.height - 200,
//                                                                       width: MediaQuery.of(context).size.width - 400,
//                                                                       decoration: BoxDecoration(
//                                                                         shape: BoxShape
//                                                                             .rectangle,
//                                                                         color: Colors
//                                                                             .grey[100],
//                                                                         borderRadius:
//                                                                             BorderRadius.circular(5),
//                                                                       ),
//                                                                       child: Container(
//                                                                           child: Container(
//                                                                             height:
//                                                                                 500,
//                                                                             width:
//                                                                                 500,
//                                                                             child:
//                                                                                 Image(
//                                                                               image: NetworkImage(widget.queryDocumentSnapshot['topimage']),
//                                                                               fit: BoxFit.contain,
//                                                                             ),
//                                                                           ),
//                                                                           height: MediaQuery.of(context).size.height - 300,
//                                                                           width: MediaQuery.of(context).size.width - 200)));
//                                                             });
//                                                       },
//                                                       child: Container(
//                                                         decoration:
//                                                             BoxDecoration(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(5),
//                                                           image: DecorationImage(
//                                                               image: NetworkImage(
//                                                                   widget.queryDocumentSnapshot[
//                                                                       'topimage']),
//                                                               fit:
//                                                                   BoxFit.cover),
//                                                           color: Colors
//                                                               .transparent,
//                                                         ),
//                                                         height: 180,
//                                                         width: 180,
//                                                         // width: 450,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )
//                                               : SizedBox(
//                                                   child: Column(
//                                                   children: [
//                                                     IconButton(
//                                                         icon: Icon(Icons
//                                                             .add_circle_outline),
//                                                         onPressed: () {
                                                        
//                                                         }),
//                                                     Text(
//                                                       "Specification Image - 1",
//                                                       style: GoogleFonts
//                                                           .josefinSans(
//                                                         textStyle: TextStyle(
//                                                             fontWeight:
//                                                                 FontWeight.bold,
//                                                             color: Colors.black,
//                                                             fontSize: 10,
//                                                             letterSpacing: 0),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )),
//                                     ),
//                                     SizedBox(
//                                       width: 20,
//                                     ),
//                                     Container(
//                                       child:
//                                           widget.queryDocumentSnapshot[
//                                                       'sideimage'] !=
//                                                   null
//                                               ? Column(
//                                                   children: [
//                                                     Row(
//                                                       children: [
                                                      
                                                      
//                                                       ],
//                                                     ),
//                                                     SizedBox(height: 15),
//                                                     GestureDetector(
//                                                       onTap: () {
//                                                         showDialog(
//                                                             context: context,
//                                                             builder:
//                                                                 (BuildContext
//                                                                     context) {
//                                                               return Dialog(
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20),
//                                                                   ),
//                                                                   elevation: 0,
//                                                                   backgroundColor:
//                                                                       Colors
//                                                                           .transparent,
//                                                                   child: Container(
//                                                                       height: MediaQuery.of(context).size.height - 200,
//                                                                       width: MediaQuery.of(context).size.width - 400,
//                                                                       decoration: BoxDecoration(
//                                                                         shape: BoxShape
//                                                                             .rectangle,
//                                                                         color: Colors
//                                                                             .grey[100],
//                                                                         borderRadius:
//                                                                             BorderRadius.circular(5),
//                                                                       ),
//                                                                       child: Container(
//                                                                           child: Container(
//                                                                             height:
//                                                                                 500,
//                                                                             width:
//                                                                                 500,
//                                                                             child:
//                                                                                 Image(
//                                                                               image: NetworkImage(widget.queryDocumentSnapshot['sideimage']),
//                                                                               fit: BoxFit.contain,
//                                                                             ),
//                                                                           ),
//                                                                           height: MediaQuery.of(context).size.height - 300,
//                                                                           width: MediaQuery.of(context).size.width - 200)));
//                                                             });
//                                                       },
//                                                       child: Container(
//                                                         decoration:
//                                                             BoxDecoration(
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(5),
//                                                           image: DecorationImage(
//                                                               image: NetworkImage(
//                                                                   widget.queryDocumentSnapshot[
//                                                                       'sideimage']),
//                                                               fit:
//                                                                   BoxFit.cover),
//                                                           color: Colors
//                                                               .transparent,
//                                                         ),
//                                                         height: 180,
//                                                         width: 180,
//                                                         // width: 450,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )
//                                               : SizedBox(
//                                                   child: Column(
//                                                   children: [
                                                    
//                                                     Text(
//                                                       "Specification Image - 2",
//                                                       style: GoogleFonts
//                                                           .josefinSans(
//                                                         textStyle: TextStyle(
//                                                             fontWeight:
//                                                                 FontWeight.bold,
//                                                             color: Colors.black,
//                                                             fontSize: 10,
//                                                             letterSpacing: 0),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 )),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 25,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   //8989 SizedBox(height: 20,),
//                   Padding(
//                     padding: const EdgeInsets.all(25.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white70,
//                           borderRadius: BorderRadius.circular(4)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: detailselemnt(context),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget detailselemnt(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10.0, right: 10),
//       child: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               widget.queryDocumentSnapshot['name'],
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 18,
//                     letterSpacing: 0),
//               ),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             GestureDetector(
//               onTap: () {
//                 showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return Dialog(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           elevation: 0,
//                           backgroundColor: Colors.transparent,
//                           child: Container(
//                             height: 200,
//                             width: MediaQuery.of(context).size.width - 400,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.rectangle,
//                               color: Colors.grey[100],
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Column(
//                               children: <Widget>[
//                                 SizedBox(
//                                   height: 20,
//                                 ),
//                                 Text(
//                                   "Edit Info",
//                                   style: GoogleFonts.josefinSans(
//                                     textStyle: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black,
//                                         fontSize: 16,
//                                         letterSpacing: 0),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(10.0),
//                                   child: Container(
//                                     height: 50,
//                                     width: 300,
//                                     decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(4)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 8.0),
//                                       child: TextField(
//                                         textCapitalization:
//                                             TextCapitalization.sentences,
//                                         style: TextStyle(color: Colors.black),
                                    
//                                         keyboardType: TextInputType.name,
//                                         decoration: InputDecoration(
//                                           border: InputBorder.none,
//                                           labelText: "Description",
//                                           labelStyle: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 12,
//                                               letterSpacing: 2),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 20,
//                                 ),
                               
//                               ],
//                             ),
//                           ));
//                     });
//               },
//               child: Text(
//                 widget.queryDocumentSnapshot['Description'].toUpperCase(),
//                 style: GoogleFonts.josefinSans(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 14,
//                       letterSpacing: 0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 8),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.black, borderRadius: BorderRadius.circular(2)),
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     left: 20.0, right: 20, top: 5, bottom: 5),
//                 child: Text(
//                   widget.queryDocumentSnapshot['category'].toUpperCase(),
//                   style: GoogleFonts.josefinSans(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 18,
//                         letterSpacing: 0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 2,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       "Sales Price",
//                       style: GoogleFonts.josefinSans(
//                         textStyle: TextStyle(
//                             // decoration:TextDecoration.lineThrough,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 18,
//                             letterSpacing: 0),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       width: 90,
//                       color: Colors.black,
//                       height: 1,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return Dialog(
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(4),
//                                   ),
//                                   elevation: 0,
//                                   backgroundColor: Colors.transparent,
//                                   child: Container(
//                                     height: 180,
//                                     width: 400,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.rectangle,
//                                       color: Colors.grey[100],
//                                       borderRadius: BorderRadius.circular(4),
//                                     ),
//                                     child: Column(
//                                       children: <Widget>[
//                                         SizedBox(
//                                           height: 20,
//                                         ),
//                                         Text(
//                                           "Edit Info",
//                                           style: GoogleFonts.josefinSans(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Colors.black,
//                                                 fontSize: 18,
//                                                 letterSpacing: 0),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Container(
//                                             height: 50,
//                                             width: 300,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 8.0),
//                                               child: TextField(
//                                                 textCapitalization:
//                                                     TextCapitalization
//                                                         .sentences,
//                                                 style: TextStyle(
//                                                     color: Colors.black),
                                          
//                                                 keyboardType:
//                                                     TextInputType.name,
//                                                 decoration: InputDecoration(
//                                                   border: InputBorder.none,
//                                                   labelText: "SALES PRICE",
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.black,
//                                                       fontSize: 12,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         GestureDetector(
                                          
//                                           child: Container(
//                                               height: 30,
//                                               width: 80,
//                                               child: Center(
//                                                 child: Text(
//                                                   "update",
//                                                   style:
//                                                       GoogleFonts.josefinSans(
//                                                     textStyle: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         color: Colors.white,
//                                                         fontSize: 11,
//                                                         letterSpacing: 0),
//                                                   ),
//                                                 ),
//                                               ),
//                                               decoration: BoxDecoration(
//                                                   color: Colors.black,
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           4))),
//                                         )
//                                       ],
//                                     ),
//                                   ));
//                             });
//                       },
//                       child: Text(
//                         widget.queryDocumentSnapshot["oprice"],
//                         style: GoogleFonts.josefinSans(
//                           textStyle: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               // decoration: TextDecoration.lineThrough,
//                               color: Colors.black,
//                               fontSize: 18,
//                               letterSpacing: 0),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Column(
//                 //   children: [
//                 //     SizedBox(height: 4),
//                 //     Text(
//                 //       "₹",
//                 //       style: GoogleFonts.josefinSans(
//                 //         textStyle: TextStyle(
//                 //             fontWeight: FontWeight.bold,
//                 //             color: Colors.black,
//                 //             fontSize: 20,
//                 //             letterSpacing: 2),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 // GestureDetector(
//                 //   onTap: () {
//                 //     showDialog(
//                 //         context: context,
//                 //         builder: (BuildContext context) {
//                 //           return Dialog(
//                 //               shape: RoundedRectangleBorder(
//                 //                 borderRadius: BorderRadius.circular(20),
//                 //               ),
//                 //               elevation: 0,
//                 //               backgroundColor: Colors.transparent,
//                 //               child: Container(
//                 //                 height: MediaQuery.of(context).size.height - 50,
//                 //                 width: MediaQuery.of(context).size.width - 400,
//                 //                 decoration: BoxDecoration(
//                 //                   shape: BoxShape.rectangle,
//                 //                   color: backgorundcolor,
//                 //                   borderRadius: BorderRadius.circular(5),
//                 //                 ),
//                 //                 child: Column(
//                 //                   children: <Widget>[
//                 //                     SizedBox(
//                 //                       height: 20,
//                 //                     ),
//                 //                     Text(
//                 //                       "EDIT INFO",
//                 //                       style: GoogleFonts.josefinSans(
//                 //                         textStyle: TextStyle(
//                 //                             fontWeight: FontWeight.w700,
//                 //                             color: Colors.black,
//                 //                             fontSize: 18,
//                 //                             letterSpacing: 1),
//                 //                       ),
//                 //                     ),
//                 //                     Padding(
//                 //                       padding: const EdgeInsets.all(10.0),
//                 //                       child: Container(
//                 //                         height: 50,
//                 //                         width: 300,
//                 //                         decoration: BoxDecoration(
//                 //                             color: Colors.brown[50],
//                 //                             borderRadius:
//                 //                                 BorderRadius.circular(10)),
//                 //                         child: Padding(
//                 //                           padding: const EdgeInsets.symmetric(
//                 //                               horizontal: 8.0),
//                 //                           child: TextField(
//                 //                             textCapitalization:
//                 //                                 TextCapitalization.sentences,
//                 //                             style:
//                 //                                 TextStyle(color: Colors.black),
//                 //                             controller: namecontroller,
//                 //                             keyboardType: TextInputType.name,
//                 //                             decoration: InputDecoration(
//                 //                               border: InputBorder.none,
//                 //                               labelText: "PRICE",
//                 //                               labelStyle: TextStyle(
//                 //                                   color: Colors.black38,
//                 //                                   fontSize: 12,
//                 //                                   letterSpacing: 2),
//                 //                             ),
//                 //                           ),
//                 //                         ),
//                 //                       ),
//                 //                     ),
//                 //                     GestureDetector(
//                 //                       onTap: () {
//                 //                         setState(() {
//                 //                           FirebaseFirestore.instance
//                 //                               .collection("Items")
//                 //                               .doc(widget.queryDocumentSnapshot[
//                 //                                   'category'])
//                 //                               .collection("Products")
//                 //                               .doc(widget
//                 //                                   .queryDocumentSnapshot['id'])
//                 //                               .update({
//                 //                             "price": double.parse(
//                 //                                 namecontroller.value.text)
//                 //                           }).then((value) {
//                 //                             Navigator.pop(context);
//                 //                             Navigator.pop(context);
//                 //                             //   Phoenix.rebirth(context);
//                 //                             // Navigator.pushReplacement(context,
//                 //                             //     MaterialPageRoute(builder: (c) {
//                 //                             //   return Homer();
//                 //                             // }));
//                 //                           });
//                 //                         });
//                 //                       },
//                 //                       child: Container(
//                 //                           height: 30,
//                 //                           width: 100,
//                 //                           child: Center(
//                 //                             child: Text(
//                 //                               "update",
//                 //                               style: GoogleFonts.josefinSans(
//                 //                                 textStyle: TextStyle(
//                 //                                     fontWeight: FontWeight.w700,
//                 //                                     color: Colors.brown[50],
//                 //                                     fontSize: 11,
//                 //                                     letterSpacing: 1),
//                 //                               ),
//                 //                             ),
//                 //                           ),
//                 //                           decoration: BoxDecoration(
//                 //                               color: lettercolor,
//                 //                               borderRadius:
//                 //                                   BorderRadius.circular(10))),
//                 //                     )
//                 //                   ],
//                 //                 ),
//                 //               ));
//                 //         });
//                 //   },
//                 //   child: Text(
//                 //     widget.queryDocumentSnapshot["price"].toString(),
//                 //     style: GoogleFonts.josefinSans(
//                 //       textStyle: TextStyle(
//                 //           fontWeight: FontWeight.bold,
//                 //           color: Colors.black,
//                 //           fontSize: 19,
//                 //           letterSpacing: 0),
//                 //     ),
//                 //   ),
//                 // ),
//                 //TODO
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Container(
//                   height: 50,
//                   color: Colors.black,
//                   width: 1,
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       "Actual Price",
//                       style: GoogleFonts.josefinSans(
//                         textStyle: TextStyle(
//                             // decoration:TextDecoration.lineThrough,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 18,
//                             letterSpacing: 0),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       width: 90,
//                       color: Colors.black,
//                       height: 1,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       // MrandMrs.sharedprefs.getDouble(
//                       //             "total+$widget.queryDocumentSnapshot['id']") ==
//                       //         null
//                       //     ? "₹  : 0"
//                       "₹  " ,
//                         //  "${((reqexpense + otherexpense)).toStringAsFixed(2)}",
//                       // .toStringAsFixed(2),
//                       style: GoogleFonts.josefinSans(
//                         textStyle: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 18,
//                             letterSpacing: 0),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),

//             SizedBox(
//               height: 10,
//             ),
           
                     
//             // Text(
//             //   "QUANTITY",
//             //   style: GoogleFonts.josefinSans(
//             //     textStyle: TextStyle(
//             //         fontWeight: FontWeight.w900,
//             //         color: Colors.black,
//             //         fontSize: 14,
//             //         letterSpacing: 1),
//             //   ),
//             // ),
//             // SizedBox(
//             //   height: 10,
//             // ),
//             // Container(
//             //   child: Center(
//             //       child: Row(
//             //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //     children: [
//             //       IconButton(
//             //           onPressed: () {
//             //             setState(() {
//             //               quanityvalue++;
//             //             });
//             //           },
//             //           icon: Icon(Icons.add_circle_outline)),
//             //       Container(
//             //           child: Center(
//             //             child: Text(
//             //               quanityvalue.toString(),
//             //               style: GoogleFonts.josefinSans(
//             //                 textStyle: TextStyle(
//             //                     fontWeight: FontWeight.w900,
//             //                     color: Colors.black,
//             //                     fontSize: 14,
//             //                     letterSpacing: 1),
//             //               ),
//             //             ),
//             //           ),
//             //           decoration: BoxDecoration(
//             //               color: Colors.grey[400],
//             //               borderRadius: BorderRadius.circular(2)),
//             //           height: 30,
//             //           width: 30),
//             //       IconButton(
//             //           onPressed: () {
//             //             setState(() {
//             //               if (quanityvalue >= 2) {
//             //                 quanityvalue--;
//             //               }
//             //             });
//             //           },
//             //           icon: Icon(Icons.remove_circle_outline)),
//             //     ],
//             //   )),
//             //   height: 50,
//             //   width: 150,
//             //   decoration: BoxDecoration(
//             //       color: Colors.grey[200],
//             //       borderRadius: BorderRadius.circular(5)),
//             // ),
//             Padding(
//               padding: const EdgeInsets.only(top: 15),
//               child: Container(
//                 height: 200,
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "PRODUCT DETAILS",
//                       style: GoogleFonts.josefinSans(
//                         textStyle: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                             fontSize: 16,
//                             letterSpacing: 0),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Table(
//                         textDirection: TextDirection.ltr,
//                         defaultVerticalAlignment:
//                             TableCellVerticalAlignment.middle,
//                         border: TableBorder.all(width: 0.5, color: lettercolor),
//                         children: [
//                           TableRow(children: [
//                             Container(
//                               height: 40,
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: Text(
//                                         "BRAND",
//                                         style: GoogleFonts.josefinSans(
//                                           textStyle: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: lettercolor,
//                                               fontSize: 12,
//                                               letterSpacing: 1),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: Text(
//                                         "MR AND MRS",
//                                         style: GoogleFonts.josefinSans(
//                                           textStyle: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: lettercolor,
//                                               fontSize: 12,
//                                               letterSpacing: 1),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ]),
//                           TableRow(children: [
//                             Container(
//                               height: 40,
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: GestureDetector(
//                                         onTap: () {},
//                                         child: Text(
//                                           "DIMENSIONS",
//                                           style: GoogleFonts.josefinSans(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 color: lettercolor,
//                                                 fontSize: 12,
//                                                 letterSpacing: 1),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                             context: context,
//                                             builder: (BuildContext context) {
//                                               return Dialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4),
//                                                   ),
//                                                   elevation: 0,
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   child: Container(
//                                                     height: 180,
//                                                     width: 400,
//                                                     decoration: BoxDecoration(
//                                                       shape: BoxShape.rectangle,
//                                                       color: Colors.grey[100],
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               4),
//                                                     ),
//                                                     child: Column(
//                                                       children: <Widget>[
//                                                         SizedBox(
//                                                           height: 20,
//                                                         ),
//                                                         Text(
//                                                           "Edit Info",
//                                                           style: GoogleFonts
//                                                               .josefinSans(
//                                                             textStyle: TextStyle(
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .bold,
//                                                                 color: Colors
//                                                                     .black,
//                                                                 fontSize: 18,
//                                                                 letterSpacing:
//                                                                     0),
//                                                           ),
//                                                         ),
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                   .all(10.0),
//                                                           child: Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration: BoxDecoration(
//                                                                 color: Colors
//                                                                     .white,
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             4)),
//                                                             child: Padding(
//                                                               padding: const EdgeInsets
//                                                                       .symmetric(
//                                                                   horizontal:
//                                                                       8.0),
//                                                               child: TextField(
//                                                                 textCapitalization:
//                                                                     TextCapitalization
//                                                                         .sentences,
//                                                                 style: TextStyle(
//                                                                     color: Colors
//                                                                         .black),
                                                              
//                                                                 keyboardType:
//                                                                     TextInputType
//                                                                         .name,
//                                                                 decoration:
//                                                                     InputDecoration(
//                                                                   border:
//                                                                       InputBorder
//                                                                           .none,
//                                                                   labelText:
//                                                                       "Height",
//                                                                   labelStyle: TextStyle(
//                                                                       color: Colors
//                                                                           .black38,
//                                                                       fontSize:
//                                                                           12,
//                                                                       letterSpacing:
//                                                                           2),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         SizedBox(height: 10),
//                                                         GestureDetector(
//                                                           onTap: () {
//                                                             setState(() {
                                                            
//                                                             });
//                                                           },
//                                                           child: Container(
//                                                               height: 30,
//                                                               width: 80,
//                                                               child: Center(
//                                                                 child: Text(
//                                                                   "update",
//                                                                   style: GoogleFonts
//                                                                       .josefinSans(
//                                                                     textStyle: TextStyle(
//                                                                         fontWeight:
//                                                                             FontWeight
//                                                                                 .bold,
//                                                                         color: Colors
//                                                                             .white,
//                                                                         fontSize:
//                                                                             11,
//                                                                         letterSpacing:
//                                                                             0),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                   color: Colors
//                                                                       .black,
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               4))),
//                                                         )
//                                                       ],
//                                                     ),
//                                                   ));
//                                             });
//                                       },
//                                       child: Text(
//                                         " H " +
//                                             widget.queryDocumentSnapshot[
//                                                 'height'],
//                                         style: GoogleFonts.josefinSans(
//                                           textStyle: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: lettercolor,
//                                               fontSize: 12,
//                                               letterSpacing: 1),
//                                         ),
//                                       ),
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                             context: context,
//                                             builder: (BuildContext context) {
//                                               return Dialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4),
//                                                   ),
//                                                   elevation: 0,
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   child: Container(
//                                                     height: 180,
//                                                     width: 400,
//                                                     decoration: BoxDecoration(
//                                                       shape: BoxShape.rectangle,
//                                                       color: Colors.grey[100],
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               4),
//                                                     ),
//                                                     child: Column(
//                                                       children: <Widget>[
//                                                         SizedBox(
//                                                           height: 20,
//                                                         ),
//                                                         Text(
//                                                           "Edit Info",
//                                                           style: GoogleFonts
//                                                               .josefinSans(
//                                                             textStyle: TextStyle(
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .bold,
//                                                                 color: Colors
//                                                                     .black,
//                                                                 fontSize: 18,
//                                                                 letterSpacing:
//                                                                     0),
//                                                           ),
//                                                         ),
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                   .all(10.0),
//                                                           child: Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration: BoxDecoration(
//                                                                 color: Colors
//                                                                     .white,
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             4)),
//                                                             child: Padding(
//                                                               padding: const EdgeInsets
//                                                                       .symmetric(
//                                                                   horizontal:
//                                                                       8.0),
//                                                               child: TextField(
//                                                                 textCapitalization:
//                                                                     TextCapitalization
//                                                                         .sentences,
//                                                                 style: TextStyle(
//                                                                     color: Colors
//                                                                         .black),
                                                             
//                                                                 keyboardType:
//                                                                     TextInputType
//                                                                         .name,
//                                                                 decoration:
//                                                                     InputDecoration(
//                                                                   border:
//                                                                       InputBorder
//                                                                           .none,
//                                                                   labelText:
//                                                                       "Width",
//                                                                   labelStyle: TextStyle(
//                                                                       color: Colors
//                                                                           .black38,
//                                                                       fontSize:
//                                                                           12,
//                                                                       letterSpacing:
//                                                                           2),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         SizedBox(height: 10),
//                                                         GestureDetector(
//                                                           onTap: () {
                                                          
                                                             
//                                                           },
//                                                           child: Container(
//                                                               height: 30,
//                                                               width: 80,
//                                                               child: Center(
//                                                                 child: Text(
//                                                                   "update",
//                                                                   style: GoogleFonts
//                                                                       .josefinSans(
//                                                                     textStyle: TextStyle(
//                                                                         fontWeight:
//                                                                             FontWeight
//                                                                                 .bold,
//                                                                         color: Colors
//                                                                             .white,
//                                                                         fontSize:
//                                                                             11,
//                                                                         letterSpacing:
//                                                                             0),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                   color: Colors
//                                                                       .black,
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               4))),
//                                                         )
//                                                       ],
//                                                     ),
//                                                   ));
//                                             });
//                                       },
//                                       child: Text(
//                                         " * W " +
//                                             widget
//                                                 .queryDocumentSnapshot['width'],
//                                         style: GoogleFonts.josefinSans(
//                                           textStyle: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: lettercolor,
//                                               fontSize: 12,
//                                               letterSpacing: 1),
//                                         ),
//                                       ),
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                             context: context,
//                                             builder: (BuildContext context) {
//                                               return Dialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4),
//                                                   ),
//                                                   elevation: 0,
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   child: Container(
//                                                     height: 180,
//                                                     width: 400,
//                                                     decoration: BoxDecoration(
//                                                       shape: BoxShape.rectangle,
//                                                       color: Colors.grey[100],
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               4),
//                                                     ),
//                                                     child: Column(
//                                                       children: <Widget>[
//                                                         SizedBox(
//                                                           height: 20,
//                                                         ),
//                                                         Text(
//                                                           "EDIT INFO",
//                                                           style: GoogleFonts
//                                                               .josefinSans(
//                                                             textStyle: TextStyle(
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .bold,
//                                                                 color: Colors
//                                                                     .black,
//                                                                 fontSize: 18,
//                                                                 letterSpacing:
//                                                                     1),
//                                                           ),
//                                                         ),
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                   .all(10.0),
//                                                           child: Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration: BoxDecoration(
//                                                                 color: Colors
//                                                                     .white,
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             4)),
//                                                             child: Padding(
//                                                               padding: const EdgeInsets
//                                                                       .symmetric(
//                                                                   horizontal:
//                                                                       8.0),
//                                                               child: TextField(
//                                                                 textCapitalization:
//                                                                     TextCapitalization
//                                                                         .sentences,
//                                                                 style: TextStyle(
//                                                                     color: Colors
//                                                                         .black),
                                                              
//                                                                 keyboardType:
//                                                                     TextInputType
//                                                                         .name,
//                                                                 decoration:
//                                                                     InputDecoration(
//                                                                   border:
//                                                                       InputBorder
//                                                                           .none,
//                                                                   labelText:
//                                                                       "Lenght",
//                                                                   labelStyle: TextStyle(
//                                                                       color: Colors
//                                                                           .black38,
//                                                                       fontSize:
//                                                                           12,
//                                                                       letterSpacing:
//                                                                           2),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         SizedBox(
//                                                           height: 10,
//                                                         ),
//                                                         GestureDetector(
//                                                           onTap: () {
                                                          
//                                                           },
//                                                           child: Container(
//                                                               height: 30,
//                                                               width: 80,
//                                                               child: Center(
//                                                                 child: Text(
//                                                                   "update",
//                                                                   style: GoogleFonts
//                                                                       .josefinSans(
//                                                                     textStyle: TextStyle(
//                                                                         fontWeight:
//                                                                             FontWeight
//                                                                                 .bold,
//                                                                         color: Colors
//                                                                             .white,
//                                                                         fontSize:
//                                                                             11,
//                                                                         letterSpacing:
//                                                                             0),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                   color: Colors
//                                                                       .black,
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               4))),
//                                                         )
//                                                       ],
//                                                     ),
//                                                   ));
//                                             });
//                                       },
//                                       child: Text(
//                                         " * L " +
//                                             widget.queryDocumentSnapshot[
//                                                 'lenght'] +
//                                             " (In Inches)",
//                                         style: GoogleFonts.josefinSans(
//                                           textStyle: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: lettercolor,
//                                               fontSize: 12,
//                                               letterSpacing: 1),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ]),
//                           TableRow(children: [
//                             Container(
//                               height: 40,
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: GestureDetector(
//                                         child: Text(
//                                           "WEIGHT",
//                                           style: GoogleFonts.josefinSans(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 color: lettercolor,
//                                                 fontSize: 12,
//                                                 letterSpacing: 1),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: GestureDetector(
//                                         onTap: () {
//                                           showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return Dialog(
//                                                     shape:
//                                                         RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               4),
//                                                     ),
//                                                     elevation: 0,
//                                                     backgroundColor:
//                                                         Colors.transparent,
//                                                     child: Container(
//                                                       height: 180,
//                                                       width: 400,
//                                                       decoration: BoxDecoration(
//                                                         shape:
//                                                             BoxShape.rectangle,
//                                                         color: Colors.grey[100],
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(4),
//                                                       ),
//                                                       child: Column(
//                                                         children: <Widget>[
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Text(
//                                                             "Edit Info",
//                                                             style: GoogleFonts
//                                                                 .josefinSans(
//                                                               textStyle: TextStyle(
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .bold,
//                                                                   color: Colors
//                                                                       .black,
//                                                                   fontSize: 18,
//                                                                   letterSpacing:
//                                                                       0),
//                                                             ),
//                                                           ),
//                                                           Padding(
//                                                             padding:
//                                                                 const EdgeInsets
//                                                                     .all(10.0),
//                                                             child: Container(
//                                                               height: 50,
//                                                               width: 300,
//                                                               decoration: BoxDecoration(
//                                                                   color: Colors
//                                                                       .white,
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               4)),
//                                                               child: Padding(
//                                                                 padding: const EdgeInsets
//                                                                         .symmetric(
//                                                                     horizontal:
//                                                                         8.0),
//                                                                 child:
//                                                                     TextField(
//                                                                   textCapitalization:
//                                                                       TextCapitalization
//                                                                           .sentences,
//                                                                   style: TextStyle(
//                                                                       color: Colors
//                                                                           .black),
                                                                
//                                                                   keyboardType:
//                                                                       TextInputType
//                                                                           .name,
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border:
//                                                                         InputBorder
//                                                                             .none,
//                                                                     labelText:
//                                                                         "Weight",
//                                                                     labelStyle: TextStyle(
//                                                                         color: Colors
//                                                                             .black38,
//                                                                         fontSize:
//                                                                             12,
//                                                                         letterSpacing:
//                                                                             0),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           GestureDetector(
//                                                             onTap: () {
                                                             
                                                               
//                                                             },
//                                                             child: Container(
//                                                                 height: 30,
//                                                                 width: 80,
//                                                                 child: Center(
//                                                                   child: Text(
//                                                                     "update",
//                                                                     style: GoogleFonts
//                                                                         .josefinSans(
//                                                                       textStyle: TextStyle(
//                                                                           fontWeight: FontWeight
//                                                                               .w700,
//                                                                           color: Colors
//                                                                               .white,
//                                                                           fontSize:
//                                                                               11,
//                                                                           letterSpacing:
//                                                                               0),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                                 decoration: BoxDecoration(
//                                                                     color: Colors
//                                                                         .black,
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             4))),
//                                                           )
//                                                         ],
//                                                       ),
//                                                     ));
//                                               });
//                                         },
//                                         child: Text(
//                                           widget.queryDocumentSnapshot[
//                                                   'weight'] +
//                                               " kg",
//                                           style: GoogleFonts.josefinSans(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 color: lettercolor,
//                                                 fontSize: 12,
//                                                 letterSpacing: 1),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ]),
//                           // TableRow(children: [
//                           //   Container(
//                           //     height: 40,
//                           //     child: Row(
//                           //       children: [
//                           //         Padding(
//                           //           padding: const EdgeInsets.all(8.0),
//                           //           child: Center(
//                           //             child: GestureDetector(
//                           //               onTap: () {
//                           //                 showDialog(
//                           //                     context: context,
//                           //                     builder: (BuildContext context) {
//                           //                       return Dialog(
//                           //                           shape:
//                           //                               RoundedRectangleBorder(
//                           //                             borderRadius:
//                           //                                 BorderRadius.circular(
//                           //                                     20),
//                           //                           ),
//                           //                           elevation: 0,
//                           //                           backgroundColor:
//                           //                               Colors.transparent,
//                           //                           child: Container(
//                           //                             height:
//                           //                                 MediaQuery.of(context)
//                           //                                         .size
//                           //                                         .height -
//                           //                                     50,
//                           //                             width:
//                           //                                 MediaQuery.of(context)
//                           //                                         .size
//                           //                                         .width -
//                           //                                     20,
//                           //                             decoration: BoxDecoration(
//                           //                               shape:
//                           //                                   BoxShape.rectangle,
//                           //                               color: Colors.brown[50],
//                           //                               borderRadius:
//                           //                                   BorderRadius
//                           //                                       .circular(5),
//                           //                             ),
//                           //                             child: Column(
//                           //                               children: <Widget>[
//                           //                                 SizedBox(
//                           //                                   height: 20,
//                           //                                 ),
//                           //                                 Text(
//                           //                                   "EDIT INFO",
//                           //                                   style: GoogleFonts
//                           //                                       .josefinSans(
//                           //                                     textStyle: TextStyle(
//                           //                                         fontWeight:
//                           //                                             FontWeight
//                           //                                                 .w700,
//                           //                                         color: Colors
//                           //                                             .black,
//                           //                                         fontSize: 18,
//                           //                                         letterSpacing:
//                           //                                             1),
//                           //                                   ),
//                           //                                 ),
//                           //                                 Padding(
//                           //                                   padding:
//                           //                                       const EdgeInsets
//                           //                                           .all(10.0),
//                           //                                   child: Container(
//                           //                                     height: 50,
//                           //                                     width: 300,
//                           //                                     decoration: BoxDecoration(
//                           //                                         color: Colors
//                           //                                                 .grey[
//                           //                                             300],
//                           //                                         borderRadius:
//                           //                                             BorderRadius
//                           //                                                 .circular(
//                           //                                                     10)),
//                           //                                     child: Padding(
//                           //                                       padding: const EdgeInsets
//                           //                                               .symmetric(
//                           //                                           horizontal:
//                           //                                               8.0),
//                           //                                       child:
//                           //                                           TextField(
//                           //                                         textCapitalization:
//                           //                                             TextCapitalization
//                           //                                                 .sentences,
//                           //                                         style: TextStyle(
//                           //                                             color: Colors
//                           //                                                 .black),
//                           //                                         controller:
//                           //                                             namecontroller,
//                           //                                         keyboardType:
//                           //                                             TextInputType
//                           //                                                 .name,
//                           //                                         decoration:
//                           //                                             InputDecoration(
//                           //                                           border:
//                           //                                               InputBorder
//                           //                                                   .none,
//                           //                                           labelText:
//                           //                                               "Warranty",
//                           //                                           labelStyle: TextStyle(
//                           //                                               color: Colors
//                           //                                                   .black38,
//                           //                                               fontSize:
//                           //                                                   12,
//                           //                                               letterSpacing:
//                           //                                                   2),
//                           //                                         ),
//                           //                                       ),
//                           //                                     ),
//                           //                                   ),
//                           //                                 ),
//                           //                                 GestureDetector(
//                           //                                   onTap: () {
//                           //                                     setState(() {
//                           //                                       FirebaseFirestore
//                           //                                           .instance
//                           //                                           .collection(
//                           //                                               "Items")
//                           //                                           .doc(widget
//                           //                                                   .queryDocumentSnapshot[
//                           //                                               'category'])
//                           //                                           .collection(
//                           //                                               "Products")
//                           //                                           .doc(widget
//                           //                                                   .queryDocumentSnapshot[
//                           //                                               'id'])
//                           //                                           .update({
//                           //                                         "warranty":
//                           //                                             namecontroller
//                           //                                                 .text
//                           //                                                 .toString()
//                           //                                       }).then((value) {
//                           //                                         Navigator.pop(
//                           //                                             context);
//                           //                                         Navigator.pop(
//                           //                                             context);
//                           //                                         //   Phoenix.rebirth(context);
//                           //                                         // Navigator.pushReplacement(
//                           //                                         //     context,
//                           //                                         //     MaterialPageRoute(
//                           //                                         //         builder:
//                           //                                         //             (c) {
//                           //                                         //   return Homer();
//                           //                                         // }));
//                           //                                       });
//                           //                                     });
//                           //                                   },
//                           //                                   child: Container(
//                           //                                       height: 30,
//                           //                                       width: 100,
//                           //                                       child: Center(
//                           //                                         child: Text(
//                           //                                           "update",
//                           //                                           style: GoogleFonts
//                           //                                               .josefinSans(
//                           //                                             textStyle: TextStyle(
//                           //                                                 fontWeight: FontWeight
//                           //                                                     .w700,
//                           //                                                 color:
//                           //                                                     Colors.black,
//                           //                                                 fontSize:
//                           //                                                     11,
//                           //                                                 letterSpacing:
//                           //                                                     1),
//                           //                                           ),
//                           //                                         ),
//                           //                                       ),
//                           //                                       decoration: BoxDecoration(
//                           //                                           color: Colors
//                           //                                                   .grey[
//                           //                                               900],
//                           //                                           borderRadius:
//                           //                                               BorderRadius.circular(
//                           //                                                   10))),
//                           //                                 )
//                           //                               ],
//                           //                             ),
//                           //                           ));
//                           //                     });
//                           //               },
//                           //               child: Text(
//                           //                 "WARRANTY",
//                           //                 style: GoogleFonts.josefinSans(
//                           //                   textStyle: TextStyle(
//                           //                       fontWeight: FontWeight.bold,
//                           //                       color: lettercolor,
//                           //                       fontSize: 12,
//                           //                       letterSpacing: 1),
//                           //                 ),
//                           //               ),
//                           //             ),
//                           //           ),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           //   Container(
//                           //     child: Row(
//                           //       children: [
//                           //         Padding(
//                           //           padding: const EdgeInsets.all(8.0),
//                           //           child: Center(
//                           //             child: Text(
//                           //               widget.queryDocumentSnapshot[
//                           //                       'warranty'] +
//                           //                   " Months Warranty",
//                           //               style: GoogleFonts.josefinSans(
//                           //                 textStyle: TextStyle(
//                           //                     fontWeight: FontWeight.bold,
//                           //                     color: lettercolor,
//                           //                     fontSize: 12,
//                           //                     letterSpacing: 1),
//                           //               ),
//                           //             ),
//                           //           ),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           // ]),
//                           // TableRow(children: [
//                           //   Container(
//                           //     height: 40,
//                           //     child: Row(
//                           //       children: [
//                           //         Padding(
//                           //           padding: const EdgeInsets.all(8.0),
//                           //           child: Center(
//                           //             child: Text(
//                           //               "MATERIAL",
//                           //               style: GoogleFonts.josefinSans(
//                           //                 textStyle: TextStyle(
//                           //                     fontWeight: FontWeight.bold,
//                           //                     color: lettercolor,
//                           //                     fontSize: 12,
//                           //                     letterSpacing: 1),
//                           //               ),
//                           //             ),
//                           //           ),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           //   Container(
//                           //     child: Row(
//                           //       children: [
//                           //         Padding(
//                           //           padding: const EdgeInsets.all(8.0),
//                           //           child: Center(
//                           //             child: Text(
//                           //               "ENGINEERED WOOD",
//                           //               style: GoogleFonts.josefinSans(
//                           //                 textStyle: TextStyle(
//                           //                     fontWeight: FontWeight.bold,
//                           //                     color: lettercolor,
//                           //                     fontSize: 12,
//                           //                     letterSpacing: 1),
//                           //               ),
//                           //             ),
//                           //           ),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           // ]),
//                           // TableRow(children: [
//                           //   Container(
//                           //     height: 40,
//                           //     child: Row(
//                           //       children: [
//                           //         Padding(
//                           //           padding: const EdgeInsets.all(8.0),
//                           //           child: Center(
//                           //             child: Text(
//                           //               "ROOM TYPE",
//                           //               style: GoogleFonts.josefinSans(
//                           //                 textStyle: TextStyle(
//                           //                     fontWeight: FontWeight.bold,
//                           //                     color: lettercolor,
//                           //                     fontSize: 12,
//                           //                     letterSpacing: 1),
//                           //               ),
//                           //             ),
//                           //           ),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           //   Container(
//                           //     child: Row(
//                           //       children: [
//                           //         Padding(
//                           //           padding: const EdgeInsets.all(8.0),
//                           //           child: Center(
//                           //             child: Text(
//                           //               "LIVING ROOM",
//                           //               style: GoogleFonts.josefinSans(
//                           //                 textStyle: TextStyle(
//                           //                     fontWeight: FontWeight.bold,
//                           //                     color: lettercolor,
//                           //                     fontSize: 12,
//                           //                     letterSpacing: 1),
//                           //               ),
//                           //             ),
//                           //           ),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           // ]),
//                         ],
//                       ),
//                     ),

//                     // Padding(
//                     //   padding: const EdgeInsets.all(10.0),
//                     //   child: GestureDetector(
//                     //     onTap: () {
//                     //       Navigator.pop(context);
//                     //       showDialog(
//                     //           context: context,
//                     //           builder: (BuildContext context) {
//                     //             return CustomDialogBox(
//                     //               title: "ADDITIONAL INFO",
//                     //               descriptions:
//                     //                   "Accessories shown in the image are only for representation and are not part of the product.Depending on your screen settings and resolution on your device there may be a slight variance in fabric color and wood polish of the image and actual product.Wood grains will vary from product to product in case of solid wood furniture.Furniture having intricate hand-painted details are individual unique pieces and may have slight distinctions and variance between the picture and actual product.The Primary material is the main material used to manufacture the product and in addition to the primary material there might also be other type of materials used in the manufacturing of the product",
//                     //               text: "Yes",
//                     //             );
//                     //           });
//                     //     },
//                     //     child: Container(
//                     //       decoration: BoxDecoration(
//                     //           color: Colors.white,
//                     //           borderRadius: BorderRadius.circular(5)),
//                     //       height: 50,
//                     //       child: Row(
//                     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //         children: [
//                     //           Padding(
//                     //             padding: const EdgeInsets.all(8.0),
//                     //             child: Center(
//                     //               child: Text(
//                     //                 "ADDITIONAL INFO",
//                     //                 style: GoogleFonts.josefinSans(
//                     //                   textStyle: TextStyle(
//                     //                       fontWeight: FontWeight.bold,
//                     //                       color: lettercolor,
//                     //                       fontSize: 12,
//                     //                       letterSpacing: 1),
//                     //                 ),
//                     //               ),
//                     //             ),
//                     //           ),
//                     //           Padding(
//                     //             padding: const EdgeInsets.all(8.0),
//                     //             child: Center(
//                     //               child: Text(
//                     //                 ">",
//                     //                 style: GoogleFonts.josefinSans(
//                     //                   textStyle: TextStyle(
//                     //                       fontWeight: FontWeight.bold,
//                     //                       color: lettercolor,
//                     //                       fontSize: 22,
//                     //                       letterSpacing: 1),
//                     //                 ),
//                     //               ),
//                     //             ),
//                     //           ),
//                     //         ],
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                     // Padding(
//                     //   padding: const EdgeInsets.all(10.0),
//                     //   child: GestureDetector(
//                     //     onTap: () {
//                     //       showDialog(
//                     //           context: context,
//                     //           builder: (BuildContext context) {
//                     //             return CustomDialogBox(
//                     //               title: "WARRANTY & INSTALLATION",
//                     //               descriptions:
//                     //                   "Assembly: Carpenter Assembly Warranty  Terms:The warranty, as mentioned, on the product is provided by the Merchant.The product comes with a 12 Months warranty against any manufacturing defect under normal household conditions.What is not covered under this warranty?This limited warranty does not apply to:normal wear and tear cuts or scratches, or damage caused by impacts or accidents products that have been stored, assembled or installed incorrectly, used inappropriately,or cleaned using the wrong cleaning methods or cleaning products. (eg upholstered furniture will lighten over time if it's exposed to direct sunlight) No warranty on upholstery/ coverings/ cushion covers Warranty Contact: In case of any issues, please reach out to us : Phone No: 022 6157 6157",
//                     //               text: "Yes",
//                     //             );
//                     //           });
//                     //     },
//                     //     child: Container(
//                     //       decoration: BoxDecoration(
//                     //           color: Colors.white,
//                     //           borderRadius: BorderRadius.circular(5)),
//                     //       height: 50,
//                     //       child: Row(
//                     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //         children: [
//                     //           Padding(
//                     //             padding: const EdgeInsets.all(8.0),
//                     //             child: Center(
//                     //               child: Text(
//                     //                 "WARRANTY & INSTALLATION",
//                     //                 style: GoogleFonts.josefinSans(
//                     //                   textStyle: TextStyle(
//                     //                       fontWeight: FontWeight.bold,
//                     //                       color: lettercolor,
//                     //                       fontSize: 12,
//                     //                       letterSpacing: 1),
//                     //                 ),
//                     //               ),
//                     //             ),
//                     //           ),
//                     //           Padding(
//                     //             padding: const EdgeInsets.all(8.0),
//                     //             child: Center(
//                     //               child: Text(
//                     //                 ">",
//                     //                 style: GoogleFonts.josefinSans(
//                     //                   textStyle: TextStyle(
//                     //                       fontWeight: FontWeight.bold,
//                     //                       color: lettercolor,
//                     //                       fontSize: 22,
//                     //                       letterSpacing: 1),
//                     //                 ),
//                     //               ),
//                     //             ),
//                     //           ),
//                     //         ],
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                     // Padding(
//                     //   padding: const EdgeInsets.all(10.0),
//                     //   child: GestureDetector(
//                     //     onTap: () {
//                     //       showDialog(
//                     //           context: context,
//                     //           builder: (BuildContext context) {
//                     //             return CustomDialogBox(
//                     //               title: "CARE",
//                     //               descriptions:
//                     //                   "Try and use a tablecloth or any thick quality cloth on your dining table or any other table which is subject to daily and heavy use.Do not keep warm or cold items directly on a furniture surface; instead use a hot pad or coasters; please do not keep hot items like a tawa or baking dish even on a hot pad.To protect your furniture from fading, avoid keeping your furniture next to windows and other places where it can be exposed to direct sunlight.To avoid minor scratches which may hamper the finish of your furniture avoid sliding or passing items placed on your tabletop.Avoid placing items like burning candles or irons on any furniture as the heat generated from them may affect the life of your furniture in the long run, make use of candle holders to avoid melting wax touching the furniture.Cleaning your furniture items regularly will help you maintain them for a long time, make sure that you clean your furniture gently with a soft lightly damp cloth; using a rough rag and pressing it hard against the wood might lead to minor scratches.In case of a spill on the furniture, never try to wipe it as it will spread the spill and hamper the polish, instead just blot the spill."
//                     //                       .toUpperCase(),
//                     //               text: "Yes",
//                     //             );
//                     //           });
//                     //     },
//                     //     child: Container(
//                     //       decoration: BoxDecoration(
//                     //           color: Colors.white,
//                     //           borderRadius: BorderRadius.circular(5)),
//                     //       height: 50,
//                     //       child: Row(
//                     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //         children: [
//                     //           Padding(
//                     //             padding: const EdgeInsets.all(8.0),
//                     //             child: Center(
//                     //               child: Text(
//                     //                 "CARE",
//                     //                 style: GoogleFonts.josefinSans(
//                     //                   textStyle: TextStyle(
//                     //                       fontWeight: FontWeight.bold,
//                     //                       color: lettercolor,
//                     //                       fontSize: 12,
//                     //                       letterSpacing: 1),
//                     //                 ),
//                     //               ),
//                     //             ),
//                     //           ),
//                     //           Padding(
//                     //             padding: const EdgeInsets.all(8.0),
//                     //             child: Center(
//                     //               child: Text(
//                     //                 ">",
//                     //                 style: GoogleFonts.josefinSans(
//                     //                   textStyle: TextStyle(
//                     //                       fontWeight: FontWeight.bold,
//                     //                       color: lettercolor,
//                     //                       fontSize: 22,
//                     //                       letterSpacing: 1),
//                     //                 ),
//                     //               ),
//                     //             ),
//                     //           ),
//                     //         ],
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//                 //  height:500,
//                 decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(5)),
//               ),
//             ),

//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 2,
//                 ),
//                 Text(
//                   "Videos",
//                   style: GoogleFonts.lato(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 16,
//                         letterSpacing: 0),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.add_circle_outline),
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return Dialog(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             elevation: 0,
//                             backgroundColor: Colors.transparent,
//                             child: Container(
//                               height: 170,
//                               width: 400,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.grey[100],
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                               child: Column(
//                                 children: <Widget>[
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Text(
//                                     "Video Links",
//                                     style: GoogleFonts.josefinSans(
//                                       textStyle: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black,
//                                           fontSize: 18,
//                                           letterSpacing: 0),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Container(
//                                       height: 45,
//                                       width: 500,
//                                       decoration: BoxDecoration(
//                                           color: Colors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(4)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 8.0),
//                                         child: TextField(
//                                           textCapitalization:
//                                               TextCapitalization.sentences,
//                                           style: TextStyle(color: Colors.black),
//                                           controller: namecontroller,
//                                           keyboardType: TextInputType.name,
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             labelText: "LINKS",
//                                             labelStyle: TextStyle(
//                                                 color: Colors.black38,
//                                                 fontSize: 12,
//                                                 letterSpacing: 2),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 0),
//                                   GestureDetector(
//                                       onTap: () {
                                    
                                       
                                       
                                    
                                       
//                                       },
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(10.0),
//                                         child: Container(
//                                           child: Center(
//                                             child: Text(
//                                               "Upload",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors.white,
//                                                     fontSize: 16,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                           height: 40,
//                                           width: 80,
//                                           decoration: BoxDecoration(
//                                               color: Colors.black,
//                                               borderRadius:
//                                                   BorderRadius.circular(4)),
//                                         ),
//                                       )),
//                                 ],
//                               ),
//                             ),
//                           );
//                         });
//                   },
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
           
//             SizedBox(
//               height: 50,
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 2,
//                 ),
//                 Text(
//                   "Files",
//                   style: GoogleFonts.lato(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 16,
//                         letterSpacing: 0),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.add_circle_outline),
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return Dialog(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             elevation: 0,
//                             backgroundColor: Colors.transparent,
//                             child: Container(
//                               height: 100,
//                               width: 300,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 color: Colors.grey[100],
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                               child: Column(
//                                 children: <Widget>[
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Text(
//                                     "Files",
//                                     style: GoogleFonts.josefinSans(
//                                       textStyle: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black,
//                                           fontSize: 18,
//                                           letterSpacing: 0),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 6,
//                                   ),
//                                   // Padding(
//                                   //   padding: const EdgeInsets.all(8.0),
//                                   //   child: Container(
//                                   //     height: 30,
//                                   //     width: 120,
//                                   //     decoration: BoxDecoration(
//                                   //         color: Colors.white,
//                                   //         borderRadius:
//                                   //             BorderRadius.circular(4)),
//                                   //     child: Padding(
//                                   //       padding: const EdgeInsets.symmetric(
//                                   //           horizontal: 8.0),
//                                   //       child: TextField(
//                                   //         textCapitalization:
//                                   //             TextCapitalization.sentences,
//                                   //         style: TextStyle(color: Colors.black),
//                                   //         controller: serialcontroller,
//                                   //         keyboardType: TextInputType.name,
//                                   //         decoration: InputDecoration(
//                                   //           border: InputBorder.none,
//                                   //           labelText: "Serial No",
//                                   //           labelStyle: TextStyle(
//                                   //               color: Colors.black45,
//                                   //               fontSize: 12,
//                                   //               letterSpacing: 0),
//                                   //         ),
//                                   //       ),
//                                   //     ),
//                                   //   ),
//                                   // ),
//                                   // SizedBox(
//                                   //   height: 5,
//                                   // ),
//                                   GestureDetector(
//                                       onTap: () {
//                                       var uploadInput =
//                                             FileUploadInputElement()
//                                               ..accept = 'file/*';

//                                         FirebaseStorage fsv =
//                                             FirebaseStorage.instance;

//                                         uploadInput.click();
//                                         uploadInput.onChange.listen((event) {
//                                           final file = uploadInput.files?.first;
//                                           final reader = FileReader();
//                                           reader.readAsDataUrl(file!);
//                                           reader.onLoadEnd
//                                               .listen((event) async {
//                                             var snapshot = await fsv
//                                                 .ref()
//                                                 .child(DateTime.now()
//                                                     .toIso8601String())
//                                                 .putBlob(file);
//                                             String downloadUrl = await snapshot
//                                                 .ref
//                                                 .getDownloadURL();
//                                             setState(() {
                                             
                                            
//                                             });
//                                           });
//                                         });
//                                       },
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(0.0),
//                                         child: Container(
//                                           height: 30,
//                                           width: 120,
//                                           child: Row(
//                                             children: [
//                                               SizedBox(
//                                                 width: 5,
//                                               ),
//                                               Center(
//                                                   child: Text("Choose File",
//                                                       style: TextStyle(
//                                                         fontSize: 13,
//                                                         color: Colors.black,
//                                                       ))),
//                                             ],
//                                           ),
//                                           decoration: BoxDecoration(
//                                               color: Colors.white,
//                                               borderRadius:
//                                                   BorderRadius.circular(4)),
//                                         ),
//                                       )),
//                                 ],
//                               ),
//                             ),
//                           );
//                         });
//                   },
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
            
//             SizedBox(
//               height: 50,
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//               Text(
//                 "Requirements List",
//                 style: GoogleFonts.josefinSans(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 18,
//                       letterSpacing: 0),
//                 ),
//               ),
//               IconButton(
//                   icon: Icon(Icons.add_circle_outline),
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return Dialog(
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                               elevation: 0,
//                               backgroundColor: Colors.transparent,
//                               child: Container(
//                                 height: 430,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.rectangle,
//                                   color: Colors.grey[100],
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                                 child: Column(
//                                   children: <Widget>[
//                                     SizedBox(
//                                       height: 20,
//                                     ),
//                                     Text(
//                                       "Requirement List",
//                                       style: GoogleFonts.josefinSans(
//                                         textStyle: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.black,
//                                             fontSize: 18,
//                                             letterSpacing: 0),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 6,
//                                     ),
//                                     SizedBox(
//                                       height: 10,
//                                     ),
//                                     Row(
//                                       children: [
//                                         // Padding(
//                                         //   padding: const EdgeInsets.all(8.0),
//                                         //   child: Container(
//                                         //     height: 50,
//                                         //     decoration: BoxDecoration(
//                                         //         color: Colors.white,
//                                         //         borderRadius:
//                                         //             BorderRadius.circular(4)),
//                                         //     width: 60,
//                                         //     child: Padding(
//                                         //       padding:
//                                         //           const EdgeInsets.symmetric(
//                                         //               horizontal: 8.0),
//                                         //       child: TextField(
//                                         //         textCapitalization:
//                                         //             TextCapitalization
//                                         //                 .sentences,
//                                         //         style: TextStyle(
//                                         //             color: Colors.black),
//                                         //         controller: serialcontroller,
//                                         //         keyboardType:
//                                         //             TextInputType.number,
//                                         //         decoration: InputDecoration(
//                                         //           border: InputBorder.none,
//                                         //           labelText: "Serial No",
//                                         //           labelStyle: TextStyle(
//                                         //               color: Colors.black38,
//                                         //               fontSize: 12,
//                                         //               letterSpacing: 0),
//                                         //         ),
//                                         //       ),
//                                         //     ),
//                                         //   ),
//                                         // ),
//                                         SizedBox(width: 10),
                                   
//                                         Row(
//                                           children: [
//                                             Padding(
//                                               padding:
//                                                   const EdgeInsets.all(8.0),
//                                               child: Container(
//                                                 height: 50,
//                                                 width: 200,
//                                                 decoration: BoxDecoration(
//                                                     color: Colors.white,
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4)),
//                                                 child: Padding(
//                                                   padding: const EdgeInsets
//                                                           .symmetric(
//                                                       horizontal: 8.0),
//                                                   child: TextField(
//                                                     textCapitalization:
//                                                         TextCapitalization
//                                                             .sentences,
//                                                     style: TextStyle(
//                                                         color: Colors.black),
                                                  
//                                                     keyboardType:
//                                                         TextInputType.name,
//                                                     decoration: InputDecoration(
//                                                       border: InputBorder.none,
//                                                       labelText: "Description",
//                                                       labelStyle: TextStyle(
//                                                           color: Colors.black38,
//                                                           fontSize: 12,
//                                                           letterSpacing: 0),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Container(
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                             width: 60,
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 8.0),
//                                               child: TextField(
//                                                 // textCapitalization: TextCapitalization.sentences,
//                                                 style: TextStyle(
//                                                     color: Colors.black),
                                            
//                                                 keyboardType:
//                                                     TextInputType.number,
//                                                 decoration: InputDecoration(
//                                                   border: InputBorder.none,
//                                                   labelText: "T",
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.black38,
//                                                       fontSize: 12,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           "- T -",
//                                           style: GoogleFonts.lato(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Colors.black,
//                                                 fontSize: 16,
//                                                 letterSpacing: 0),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.all(3.0),
//                                           child: Container(
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                             width: 60,
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 8.0),
//                                               child: TextField(
//                                                 // textCapitalization: TextCapitalization.sentences,
//                                                 style: TextStyle(
//                                                     color: Colors.black),
                                             
//                                                 keyboardType:
//                                                     TextInputType.number,
//                                                 decoration: InputDecoration(
//                                                   border: InputBorder.none,
//                                                   labelText: "W",
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.black38,
//                                                       fontSize: 12,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           "- W -",
//                                           style: GoogleFonts.lato(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Colors.black,
//                                                 fontSize: 16,
//                                                 letterSpacing: 0),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Container(
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                             width: 60,
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 8.0),
//                                               child: TextField(
//                                                 // textCapitalization: TextCapitalization.sentences,
//                                                 style: TextStyle(
//                                                     color: Colors.black),
                                             
//                                                 keyboardType:
//                                                     TextInputType.number,
//                                                 decoration: InputDecoration(
//                                                   border: InputBorder.none,
//                                                   labelText: "L",
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.black38,
//                                                       fontSize: 12,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           "- L ",
//                                           style: GoogleFonts.lato(
//                                             textStyle: TextStyle(
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Colors.black,
//                                                 fontSize: 16,
//                                                 letterSpacing: 0),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Container(
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                             width: 60,
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 8.0),
//                                               child: TextField(
//                                                 textCapitalization:
//                                                     TextCapitalization
//                                                         .sentences,
//                                                 style: TextStyle(
//                                                     color: Colors.black),
                                             
//                                                 keyboardType:
//                                                     TextInputType.name,
//                                                 decoration: InputDecoration(
//                                                   border: InputBorder.none,
//                                                   labelText: "NO.Q",
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.black38,
//                                                       fontSize: 12,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         // Padding(
//                                         //   padding:
//                                         //       const EdgeInsets.all(10.0),
//                                         //   child: Container(
//                                         //     height: 50,
//                                         //     decoration: BoxDecoration(
//                                         //         color: Colors.grey[200],
//                                         //         borderRadius:
//                                         //             BorderRadius.circular(
//                                         //                 10)),
//                                         //     width: 60,
//                                         //     child: Padding(
//                                         //       padding: const EdgeInsets
//                                         //               .symmetric(
//                                         //           horizontal: 8.0),
//                                         //       child: TextField(
//                                         //         // textCapitalization: TextCapitalization.sentences,
//                                         //         style: TextStyle(
//                                         //             color: Colors.black),
//                                         //         controller:
//                                         //             cuftcontroller,
//                                         //         keyboardType:
//                                         //             TextInputType.number,
//                                         //         decoration: InputDecoration(
//                                         //           border: InputBorder.none,
//                                         //           labelText: "Cu.ft",
//                                         //           labelStyle: TextStyle(
//                                         //               color: Colors.black38,
//                                         //               fontSize: 12,
//                                         //               letterSpacing: 2),
//                                         //         ),
//                                         //       ),
//                                         //     ),
//                                         //   ),
//                                         // ),
//                                         //     Text(
//                                         //       qnocontroller == "" ?
//                                         //       "hjw" : "${(( double.parse(tdimensioncontroller.value.text)*double.parse(litemdimensioncontroller.value.text) * double.parse(witemdimensioncontroller.value.text)) / 1728 *double.parse(qnocontroller.value.text)).toStringAsFixed(2)}",
//                                         // //      qnocontroller.value.text) == null ? "jk":
//                                         // //  ,
//                                         //       style: GoogleFonts.lato(
//                                         //         textStyle: TextStyle(
//                                         //             fontWeight:
//                                         //                 FontWeight.normal,
//                                         //             color: Colors.black,
//                                         //             fontSize: 14,
//                                         //             letterSpacing: 2),
//                                         //       ),
//                                         //     ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.all(3.0),
//                                           child: Container(
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                             width: 60,
//                                             child: Padding(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 8.0),
//                                               child: TextField(
//                                                 // textCapitalization: TextCapitalization.sentences,
//                                                 style: TextStyle(
//                                                     color: Colors.black),
                                               
//                                                 keyboardType:
//                                                     TextInputType.number,
//                                                 decoration: InputDecoration(
//                                                   border: InputBorder.none,
//                                                   labelText: "Rate",
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.black38,
//                                                       fontSize: 12,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         // Text(
//                                         //   "Rate",
//                                         //   style: GoogleFonts.lato(
//                                         //     textStyle: TextStyle(
//                                         //         fontWeight:
//                                         //             FontWeight.normal,
//                                         //         color: Colors.black,
//                                         //         fontSize: 16,
//                                         //         letterSpacing: 2),
//                                         //   ),
//                                         // ),
//                                       ],
//                                     ),
//                                     GestureDetector(
//                                         onTap: () {
//                                          },
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Container(
//                                             child: Center(
//                                               child: Text(
//                                                 "Upload",
//                                                 style: GoogleFonts.josefinSans(
//                                                   textStyle: TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       color: Colors.white,
//                                                       fontSize: 16,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                             height: 40,
//                                             width: 80,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.black,
//                                                 borderRadius:
//                                                     BorderRadius.circular(4)),
//                                           ),
//                                         )),
//                                   ],
//                                 ),
//                               ));
//                         });
//                   }),
//               Text(
//                 "Total : " +
//                    MRANDMRS.sharedprefs!.getDouble("total+$widget.queryDocumentSnapshot['id']")
//                         !.toStringAsFixed(2),
//                 style: GoogleFonts.lato(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 12,
//                       letterSpacing: 1),
//                 ),
//               ),
//             ]),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     child:  Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 25.0, right: 25.0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width,
//                               child: Table(
//                                   textDirection: TextDirection.ltr,
//                                   defaultVerticalAlignment:
//                                       TableCellVerticalAlignment.middle,
//                                   border: TableBorder.all(
//                                       width: 1.0, color: Colors.black),
//                                   children: [
//                                     TableRow(children: [
//                                       TableCell(
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Container(
//                                               constraints: BoxConstraints(
//                                                   maxHeight: 100),
//                                               child: Text(
//                                                 "Type Of Wood",
//                                                 style: GoogleFonts.josefinSans(
//                                                   textStyle: TextStyle(
//                                                       fontWeight:
//                                                           FontWeight.w800,
//                                                       color: Colors.black,
//                                                       fontSize:
//                                                           MediaQuery.of(context)
//                                                                   .size
//                                                                   .width /
//                                                               88,
//                                                       letterSpacing: 0),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Description",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Thickness(Inch)",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "width(Inch)",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Length(Inch)",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "No of Items",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Cu.ft",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Rate",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Actual price",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ]),
//                                   ]),
//                             ),
//                           ),
//                   ),
//                   Container(
//                     child: Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 25.0, right: 25),
//                             child: Container(
//                               height: MediaQuery.of(context).size.height - 200,
//                               decoration: BoxDecoration(
//                                   color: Colors.white10,
//                                   borderRadius: BorderRadius.circular(4)),
//                               child: StreamBuilder<QuerySnapshot>(
//                                   stream: FirebaseFirestore.instance
//                                       .collection("SearchProducts")
//                                       .doc(widget.queryDocumentSnapshot['id'])
//                                       .collection("materials")
//                                       .snapshots(),
//                                   builder: (context, snapshot) {
//                                     if (!snapshot.hasData) {
//                                       return Text(
//                                         'No Data...',
//                                       );
//                                     } else {
//                                       ///333
//                                       ///

//                                       return Scrollbar(
//                                         child: ListView.builder(
//                                             scrollDirection: Axis.vertical,
//                                             itemCount:
//                                                 snapshot.data!.docs.length,
//                                             itemBuilder: (BuildContext context,
//                                                 int index) {
//                                               // MrandMrs.sharedprefs.setInt(
//                                               //     "total",
//                                               //     (((((snapshot.data.docs[index]['tvalue'] *
//                                               //                     snapshot.data
//                                               //                             .docs[index]
//                                               //                         [
//                                               //                         'wvalue'] *
//                                               //                     snapshot.data
//                                               //                             .docs[index]
//                                               //                         [
//                                               //                         'lvalue']) /
//                                               //                 1728 *
//                                               //                 snapshot.data
//                                               //                         .docs[index]
//                                               //                     [
//                                               //                     'quantity']))) *
//                                               //             snapshot.data
//                                               //                     .docs[index]
//                                               //                 ['rate'])
//                                               //         .toStringAsFixed(2));

//                                               // print("ikwkd" +
//                                               //     MrandMrs.sharedprefs
//                                               //         .getInt("total")
//                                               //         .toString());

//                                               ///(((((snapshot.data.docs[index]['tvalue'] * snapshot.data.docs[index]['wvalue'] * snapshot.data.docs[index]['lvalue']) / 1728 * snapshot.data.docs[index]['quantity']))) * snapshot.data.docs[index]['rate']).toStringAsFixed(2)

//                                               // _reqexpense.add((((((snapshot.data
//                                               //                         .docs[index]
//                                               //                     ['tvalue'] *
//                                               //                 snapshot.data
//                                               //                         .docs[index]
//                                               //                     ['wvalue'] *
//                                               //                 snapshot.data
//                                               //                             .docs[
//                                               //                         index]
//                                               //                     ['lvalue']) /
//                                               //             1728 *
//                                               //             snapshot.data
//                                               //                     .docs[index]
//                                               //                 ['quantity']))) *
//                                               //         snapshot.data.docs[index]
//                                               //             ['rate'])
//                                               //     .toStringAsFixed(2));

//                                               return Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(0.0),
//                                                 child: GestureDetector(
//                                                   onTap: () {},
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(5)),
//                                                     height: 48,
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsets.all(
//                                                               0.0),
//                                                       child: Container(
//                                                         width: MediaQuery.of(
//                                                                 context)
//                                                             .size
//                                                             .width,
//                                                         child: Table(
//                                                             textDirection:
//                                                                 TextDirection
//                                                                     .ltr,
//                                                             defaultVerticalAlignment:
//                                                                 TableCellVerticalAlignment
//                                                                     .middle,
//                                                             border:
//                                                                 TableBorder.all(
//                                                                     width: 1.0,
//                                                                     color: Colors
//                                                                         .black),

//                                                             //  border:TableBorder.symmetric(),

//                                                             defaultColumnWidth:
//                                                                 FlexColumnWidth(
//                                                                     30),
//                                                             children: [
//                                                               TableRow(
//                                                                   children: [
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 200,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: EnhancedDropDown.withData(
//                                                                                                     dropdownLabelTitle: "",
//                                                                                                     dataSource: reqwoodlist,
//                                                                                                     defaultOptionText: "",
//                                                                                                     valueReturned: (chosen) {
//                                                                                                       print(chosen);
//                                                                                                       setState(() {
//                                                                                                         reqwoodtype = chosen;
//                                                                                                       });
//                                                                                                     }),

//                                                                                                 //typeof//
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"name": reqwoodtype});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"name": reqwoodtype})
//                                                                                                         .whenComplete(() => EasyLoading.showToast('Toast'))
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data!.docs[index]['name'],
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 131, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Description",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"comments": namecontroller.text.toString()});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"comments": namecontroller.text.toString()})
//                                                                                                         .whenComplete(() => EasyLoading.showToast('Toast'))
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data!.docs[index]['comments'],
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 131, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Thickness Editor",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"tvalue": double.parse(namecontroller.value.text)});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"tvalue": double.parse(namecontroller.value.text)})
//                                                                                                         .whenComplete(() => Toast.show("Items Updated Successfully", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM))
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);

//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data.docs[index]['tvalue'].toString(),
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Width Editor",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"wvalue": double.parse(namecontroller.value.text)});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"wvalue": double.parse(namecontroller.value.text)})
//                                                                                                         .whenComplete(() => Toast.show("Items Updated Successfully", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM))
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data.docs[index]['wvalue'].toString(),
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "lenght Editor",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"lvalue": double.parse(namecontroller.value.text)});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"lvalue": double.parse(namecontroller.value.text)})
//                                                                                                         .whenComplete(() => Toast.show("Items Updated Successfully", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM))
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data.docs[index]['lvalue'].toString(),
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Quantity",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"quantity": double.parse(namecontroller.value.text)});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"quantity": double.parse(namecontroller.value.text)})
//                                                                                                         .whenComplete(() => Toast.show("Items Updated Successfully", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM))
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data.docs[index]['quantity'].toString(),
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Cu.ft",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"cuft": double.parse(namecontroller.value.text).floorToDouble()});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"cuft": double.parse(namecontroller.value.text).floorToDouble()})
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               "${((snapshot.data!.docs[index]['tvalue'] * snapshot.data!.docs[index]['wvalue'] * snapshot.data!.docs[index]['lvalue']) / 1728 * snapshot.data.docs[index]['quantity']).toStringAsFixed(2)}",

//                                                                               //     snapshot.data
//                                                                               //             .docs[index]
//                                                                               //         [
//                                                                               //         'wvalue'] *
//                                                                               //     snapshot
//                                                                               //         .data
//                                                                               //         .docs[
//                                                                               //             index]
//                                                                               //             [
//                                                                               //             'lvalue']
//                                                                               //         .toString(),
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Rate Editor",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"rate": double.parse(namecontroller.value.text)});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"rate": double.parse(namecontroller.value.text)})
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //  Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                               snapshot.data!.docs[index]['rate'].toString(),
//                                                                               style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     TableCell(
//                                                                       //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             const EdgeInsets.all(15.0),
//                                                                         child:
//                                                                             Center(
//                                                                           child:
//                                                                               GestureDetector(
//                                                                             onTap:
//                                                                                 () {
//                                                                               showDialog(
//                                                                                   context: context,
//                                                                                   builder: (BuildContext context) {
//                                                                                     return Dialog(
//                                                                                         shape: RoundedRectangleBorder(
//                                                                                           borderRadius: BorderRadius.circular(4),
//                                                                                         ),
//                                                                                         elevation: 0,
//                                                                                         backgroundColor: Colors.transparent,
//                                                                                         child: Container(
//                                                                                           height: 180,
//                                                                                           width: 400,
//                                                                                           decoration: BoxDecoration(
//                                                                                             shape: BoxShape.rectangle,
//                                                                                             color: Colors.grey[100],
//                                                                                             borderRadius: BorderRadius.circular(4),
//                                                                                           ),
//                                                                                           child: Column(
//                                                                                             children: <Widget>[
//                                                                                               SizedBox(
//                                                                                                 height: 20,
//                                                                                               ),
//                                                                                               Text(
//                                                                                                 "Edit Info",
//                                                                                                 style: GoogleFonts.josefinSans(
//                                                                                                   textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets.all(10.0),
//                                                                                                 child: Container(
//                                                                                                   height: 50,
//                                                                                                   width: 300,
//                                                                                                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                                                                   child: Padding(
//                                                                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                                     child: TextField(
//                                                                                                       textCapitalization: TextCapitalization.sentences,
//                                                                                                       style: TextStyle(color: Colors.black),
//                                                                                                       controller: namecontroller,
//                                                                                                       keyboardType: TextInputType.name,
//                                                                                                       decoration: InputDecoration(
//                                                                                                         border: InputBorder.none,
//                                                                                                         labelText: "Actual Rate",
//                                                                                                         labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               SizedBox(
//                                                                                                 height: 10,
//                                                                                               ),
//                                                                                               GestureDetector(
//                                                                                                 onTap: () {
//                                                                                                   setState(() {
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("Products")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"arate": namecontroller.text.toString()});
//                                                                                                     FirebaseFirestore.instance
//                                                                                                         .collection("SearchProducts")
//                                                                                                         .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                         .collection("materials")
//                                                                                                         .doc(
//                                                                                                           snapshot.data!.docs[index]['serial'],
//                                                                                                         )
//                                                                                                         .update({"arate": namecontroller.text.toString()})
//                                                                                                         .then((value) {
//                                                                                                           Navigator.pop(context);
//                                                                                                           Navigator.pop(context);
//                                                                                                           //   Phoenix.rebirth(context);
//                                                                                                           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                           //   return Homer();
//                                                                                                           // }));
//                                                                                                         });
//                                                                                                   });
//                                                                                                 },
//                                                                                                 child: Container(
//                                                                                                     height: 30,
//                                                                                                     width: 100,
//                                                                                                     child: Center(
//                                                                                                       child: Text(
//                                                                                                         "update",
//                                                                                                         style: GoogleFonts.josefinSans(
//                                                                                                           textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                         ),
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                               )
//                                                                                             ],
//                                                                                           ),
//                                                                                         ));
//                                                                                   });
//                                                                             },
//                                                                             child:
//                                                                                 Text(
//                                                                                   ";km;",
//                                                                                     style: GoogleFonts.josefinSans(
//                                                                                 textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: MediaQuery.of(context).size.width / 88, letterSpacing: 0),
//                                                                               ),
//                                                                             ),
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ]),
//                                                             ]),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               );
//                                             }),
//                                       );
//                                     }
//                                   }),
//                             ),
//                           ),
//                   ),
//                 ],
//               ),
//             ),

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 10, bottom: 10),
//             //   child: Container(
//             //     decoration: BoxDecoration(
//             //         color: Colors.orange[300],
//             //         borderRadius: BorderRadius.circular(5)),
//             //     height: 50,
//             //     child: Padding(
//             //       padding: const EdgeInsets.all(8.0),
//             //       child: Center(
//             //         child: Text(
//             //           "BUY NOW",
//             //           style: GoogleFonts.josefinSans(
//             //             textStyle: TextStyle(
//             //                 fontWeight: FontWeight.bold,
//             //                 color: Colors.black,
//             //                 fontSize: 16,
//             //                 letterSpacing: 1),
//             //           ),
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //   children: [
//             //     GestureDetector(
//             //       onTap: () {
//             //        
//             //       },
//             //       child: Container(
//             //         decoration: BoxDecoration(
//             //             color: Colors.orange[100],
//             //             borderRadius: BorderRadius.circular(5)),
//             //         height: 50,
//             //         width: 194,
//             //         child: Center(
//             //           child: Text(
//             //             "ADD TO CART",
//             //             style: GoogleFonts.josefinSans(
//             //               textStyle: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   color: lettercolor,
//             //                   fontSize: 12,
//             //                   letterSpacing: 1),
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //     ),
//             //     Container(
//             //       decoration: BoxDecoration(
//             //           color: Colors.orange[100],
//             //           borderRadius: BorderRadius.circular(5)),
//             //       height: 50,
//             //       width: 194,
//             //       child: Center(
//             //         child: Text(
//             //           "ADD TO WISHLIST",
//             //           style: GoogleFonts.josefinSans(
//             //             textStyle: TextStyle(
//             //                 fontWeight: FontWeight.bold,
//             //                 color: backgorundcolor,
//             //                 fontSize: 12,
//             //                 letterSpacing: 1),
//             //           ),
//             //         ),
//             //       ),
//             //     ),
//             //   ],
//             // ),
//             // SizedBox(
//             //   height: 10,
//             // ),
//             // Text(
//             //   "RELATED PRODUCTS",
//             //   style: GoogleFonts.josefinSans(
//             //     textStyle: TextStyle(
//             //         fontWeight: FontWeight.w900,
//             //         color: Colors.black,
//             //         fontSize: 14,
//             //         letterSpacing: 1),
//             //   ),
//             // ),
//             // SizedBox(
//             //   height: 10,
//             // ),
//             // Container(
//             //   height: 180,
//             //   child: StreamBuilder(
//             //       stream: FirebaseFirestore.instance
//             //           .collection("Items")
//             //           .doc(widget.queryDocumentSnapshot["category"])
//             //           .collection("Products")
//             //           .where("tag",
//             //               arrayContains:
//             //                   widget.queryDocumentSnapshot["category"])
//             //           .snapshots(),
//             //       builder: (context, snapshot) {
//             //         if (!snapshot.hasData) {
//             //           return Text(
//             //             'No Data...',
//             //           );
//             //         } else {
//             //           return Scrollbar(
//             //             child: ListView.builder(
//             //                 scrollDirection: Axis.horizontal,
//             //                 itemCount: snapshot.data.docs.length,
//             //                 itemBuilder: (BuildContext context, int index) {
//             //                   return Padding(
//             //                     padding: const EdgeInsets.all(10.0),
//             //                     child: GestureDetector(
//             //                       onTap: () {
//             //                         Navigator.push(
//             //                             context,
//             //                             MaterialPageRoute(
//             //                                 builder: (context) => Detailer(
//             //                                     queryDocumentSnapshot: snapshot
//             //                                         .data.docs[index])));
//             //                       },
//             //                       child: Container(
//             //                         decoration: BoxDecoration(
//             //                             color: Colors.black,
//             //                             borderRadius: BorderRadius.circular(5)),
//             //                         width: 150,
//             //                         child: Column(
//             //                           children: [
//             //                             Container(
//             //                               height: 142,
//             //                               width: 260,
//             //                               decoration: BoxDecoration(
//             //                                   borderRadius:
//             //                                       BorderRadius.circular(5),
//             //                                   color: Colors.black,
//             //                                   image: DecorationImage(
//             //                                       image: NetworkImage(
//             //                                           snapshot.data.docs[index]
//             //                                               ['mainimage']),
//             //                                       fit: BoxFit.cover)),
//             //                             ),
//             //                             Center(
//             //                               child: Text(
//             //                                   snapshot.data.docs[index]['name']
//             //                                       .toUpperCase(),
//             //                                   style: GoogleFonts.josefinSans(
//             //                                     textStyle: TextStyle(
//             //                                         fontWeight: FontWeight.w900,
//             //                                         color: Colors.black,
//             //                                         fontSize: 12,
//             //                                         letterSpacing: 1),
//             //                                   )),
//             //                             ),
//             //                           ],
//             //                         ),
//             //                       ),
//             //                     ),
//             //                   );
//             //                 }),
//             //           );
//             //         }
//             //       }),
//             //   decoration: BoxDecoration(
//             //       color: Colors.black, borderRadius: BorderRadius.circular(5)),
//             // ),
//             Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//               Text(
//                 "Other Expenses",
//                 style: GoogleFonts.josefinSans(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 17,
//                       letterSpacing: 0),
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(Icons.add_circle_outline),
//                 onPressed: () {
//                   showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return StreamBuilder<QuerySnapshot>(
//                             stream: FirebaseFirestore.instance
//                                 .collection("Expense")
//                                 .snapshots(),
//                             builder: (BuildContext context, snapshots) {
//                               List<String> expenses = [];
//                               snapshots.data!.docs.forEach((element) {
//                                 //  setState(() {
//                                 expenses.add(element.data()['name']);
//                                 // });

//                                 print("HLO" + element.data()['name']);
//                               });
//                               return Dialog(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                                 elevation: 0,
//                                 backgroundColor: Colors.transparent,
//                                 child: Container(
//                                   height: 250,
//                                   width: 510,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.rectangle,
//                                     color: Colors.grey[100],
//                                     borderRadius: BorderRadius.circular(4),
//                                   ),
//                                   child: Column(
//                                     children: <Widget>[
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             "Other Expense",
//                                             style: GoogleFonts.josefinSans(
//                                               textStyle: TextStyle(
//                                                   fontWeight: FontWeight.bold,
//                                                   color: Colors.black,
//                                                   fontSize: 18,
//                                                   letterSpacing: 0),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 10,
//                                           ),
//                                           GestureDetector(
//                                             onTap: () {
//                                               showModalBottomSheet(
//                                                   context: context,
//                                                   builder: (b) {
//                                                     return Container(
//                                                         height: 150,
//                                                         color: Colors.white,
//                                                         child: Column(
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                     const EdgeInsets
//                                                                             .all(
//                                                                         8.0),
//                                                                 child:
//                                                                     Container(
//                                                                   height: 45,
//                                                                   width: 150,
//                                                                   decoration: BoxDecoration(
//                                                                       color: Colors
//                                                                               .grey[
//                                                                           100],
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               4)),
//                                                                   child:
//                                                                       Padding(
//                                                                     padding: const EdgeInsets
//                                                                             .symmetric(
//                                                                         horizontal:
//                                                                             8.0),
//                                                                     child:
//                                                                         TextField(
//                                                                       textCapitalization:
//                                                                           TextCapitalization
//                                                                               .sentences,
//                                                                       style: TextStyle(
//                                                                           color:
//                                                                               Colors.black),
//                                                                       controller:
//                                                                           expensecontroller,
//                                                                       keyboardType:
//                                                                           TextInputType
//                                                                               .name,
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border:
//                                                                             InputBorder.none,
//                                                                         labelText:
//                                                                             "Expense Type",
//                                                                         labelStyle: TextStyle(
//                                                                             color: Colors
//                                                                                 .black54,
//                                                                             fontSize:
//                                                                                 12,
//                                                                             letterSpacing:
//                                                                                 2),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               GestureDetector(
//                                                                 onTap: () {
//                                                                   FirebaseFirestore
//                                                                       .instance
//                                                                       .collection(
//                                                                           "Expense")
//                                                                       .doc(expensecontroller
//                                                                           .text
//                                                                           .toUpperCase()
//                                                                           .trim()
//                                                                           .toString())
//                                                                       .set({
//                                                                     "name": expensecontroller
//                                                                         .text
//                                                                         .toUpperCase()
//                                                                         .trim()
//                                                                         .toString()
//                                                                   }).whenComplete(
//                                                                           () {
//                                                                     Navigator.pop(
//                                                                         context);
//                                                                     Navigator.pop(
//                                                                         context);
//                                                                     Navigator.pop(
//                                                                         context);
//                                                                   });
//                                                                 },
//                                                                 child:
//                                                                     Container(
//                                                                   height: 45,
//                                                                   width: 100,
//                                                                   decoration: BoxDecoration(
//                                                                       color: Colors
//                                                                           .black,
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               10)),
//                                                                   child: Center(
//                                                                     child: WidgetHelper
//                                                                         .subtext(
//                                                                       "Update",
//                                                                       12,
//                                                                       Colors
//                                                                           .white,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               )
//                                                             ]));
//                                                   });
//                                             },
//                                             child:
//                                                 Icon(Icons.add_circle_outline),
//                                           ),
//                                         ],
//                                       ),
//                                       SizedBox(
//                                         height: 6,
//                                       ),
//                                       SizedBox(
//                                         height: 10,
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           //dropdown
//                                           //

//                                           Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             child: EnhancedDropDown.withData(
//                                                 dropdownLabelTitle: "",
//                                                 dataSource: expense,
//                                                 defaultOptionText: "",
//                                                 valueReturned: (chosen) {
//                                                   print(chosen);
//                                                   setState(() {
//                                                     expensetype = chosen;
//                                                   });
//                                                 }),
//                                           ),

//                                           // Padding(
//                                           //   padding: const EdgeInsets.all(8.0),
//                                           //   child: Container(
//                                           //     height: 50,
//                                           //     decoration: BoxDecoration(
//                                           //         color: Colors.white,
//                                           //         borderRadius:
//                                           //             BorderRadius.circular(4)),
//                                           //     width: 160,
//                                           //     child: Padding(
//                                           //       padding: const EdgeInsets.symmetric(
//                                           //           horizontal: 8.0),
//                                           //       child: TextField(
//                                           //         textCapitalization:
//                                           //             TextCapitalization.sentences,
//                                           //         style:
//                                           //             TextStyle(color: Colors.black),
//                                           //         controller: commentscontroller,
//                                           //         keyboardType: TextInputType.text,
//                                           //         decoration: InputDecoration(
//                                           //           border: InputBorder.none,
//                                           //           labelText: "Description",
//                                           //           labelStyle: TextStyle(
//                                           //               color: Colors.black38,
//                                           //               fontSize: 12,
//                                           //               letterSpacing: 0),
//                                           //         ),
//                                           //       ),
//                                           //     ),
//                                           //   ),
//                                           // ),
//                                           Row(
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(8.0),
//                                                 child: Container(
//                                                   height: 50,
//                                                   width: 200,
//                                                   decoration: BoxDecoration(
//                                                       color: Colors.white,
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               4)),
//                                                   child: Padding(
//                                                     padding: const EdgeInsets
//                                                             .symmetric(
//                                                         horizontal: 8.0),
//                                                     child: TextField(
//                                                       textCapitalization:
//                                                           TextCapitalization
//                                                               .sentences,
//                                                       style: TextStyle(
//                                                           color: Colors.black),
//                                                       controller:
//                                                           ratecontroller,
//                                                       keyboardType:
//                                                           TextInputType.name,
//                                                       decoration:
//                                                           InputDecoration(
//                                                         border:
//                                                             InputBorder.none,
//                                                         labelText: "Price",
//                                                         labelStyle: TextStyle(
//                                                             color:
//                                                                 Colors.black38,
//                                                             fontSize: 12,
//                                                             letterSpacing: 0),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                       GestureDetector(
//                                           onTap: () {
//                                             int? plusexpno = ++expno;
//                                             FirebaseFirestore.instance
//                                                 .collection("Products")
//                                                 .doc(widget
//                                                         .queryDocumentSnapshot[
//                                                     'id'])
//                                                 .collection("others")
//                                                 .doc(plusexpno.toString())
//                                                 .set({
//                                               "serial": plusexpno.toString(),
//                                               "rate": double.parse(
//                                                   ratecontroller.value.text),
//                                               "comments": expensetype
//                                             });
//                                             FirebaseFirestore.instance
//                                                 .collection("SearchProducts")
//                                                 .doc(widget
//                                                         .queryDocumentSnapshot[
//                                                     'id'])
//                                                 .collection("others")
//                                                 .doc(plusexpno.toString())
//                                                 .set({
//                                                   "serial":
//                                                       plusexpno.toString(),
//                                                   "rate": double.parse(
//                                                       ratecontroller
//                                                           .value.text),
//                                                   "comments": expensetype
//                                                 })
//                                                 .whenComplete(() => EasyLoading.showToast("done"))
//                                                 .then((value) {
//                                                   Navigator.pop(context);
//                                                   Navigator.pop(context);
//                                                 });

//                                             itemcontroller.clear();
//                                             qnocontroller.clear();
//                                             tdimensioncontroller.clear();
//                                             witemdimensioncontroller.clear();
//                                             litemdimensioncontroller.clear();
//                                             commentscontroller.clear();
//                                             ratecontroller.clear();
//                                           },
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             child: Container(
//                                               child: Center(
//                                                 child: Text(
//                                                   "Upload",
//                                                   style:
//                                                       GoogleFonts.josefinSans(
//                                                     textStyle: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         color: Colors.white,
//                                                         fontSize: 16,
//                                                         letterSpacing: 0),
//                                                   ),
//                                                 ),
//                                               ),
//                                               height: 30,
//                                               width: 80,
//                                               decoration: BoxDecoration(
//                                                   color: Colors.black,
//                                                   borderRadius:
//                                                       BorderRadius.circular(4)),
//                                             ),
//                                           )),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             });
//                       });
//                 },
//               ),
//               //888//
//               Text(
//                 "Total : " +
//                    MRANDMRS.sharedprefs!
//                         .getDouble(
//                             "subtotal+$widget.queryDocumentSnapshot['id']")
//                         .toString(),
//                 style: GoogleFonts.lato(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 12,
//                       letterSpacing: 1),
//                 ),
//               ),
//             ]),

//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     child: MRANDMRS.sharedprefs!.getDouble(
//                                 "subtotal+$widget.queryDocumentSnapshot['id']") ==
//                             0
//                         ? SizedBox()
//                         : Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 25.0, right: 25.0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width,
//                               child: Table(
//                                   textDirection: TextDirection.ltr,
//                                   defaultVerticalAlignment:
//                                       TableCellVerticalAlignment.middle,
//                                   border: TableBorder.all(
//                                       width: 1.0, color: Colors.black),
//                                   children: [
//                                     TableRow(children: [
//                                       // TableCell(
//                                       //   child: Padding(
//                                       //     padding: const EdgeInsets.all(15.0),
//                                       //     child: Center(
//                                       //       child: Container(
//                                       //         constraints: BoxConstraints(
//                                       //             maxHeight: 100),
//                                       //         child: Text(
//                                       //           "Serial No",
//                                       //           style: GoogleFonts.josefinSans(
//                                       //             textStyle: TextStyle(
//                                       //                 fontWeight:
//                                       //                     FontWeight.w800,
//                                       //                 color: Colors.black,
//                                       //                 fontSize:
//                                       //                     MediaQuery.of(context)
//                                       //                             .size
//                                       //                             .width /
//                                       //                         88,
//                                       //                 letterSpacing: 0),
//                                       //           ),
//                                       //         ),
//                                       //       ),
//                                       //     ),
//                                       //   ),
//                                       // ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Description",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       TableCell(
//                                         //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                         child: Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Center(
//                                             child: Text(
//                                               "Price",
//                                               style: GoogleFonts.josefinSans(
//                                                 textStyle: TextStyle(
//                                                     fontWeight: FontWeight.w800,
//                                                     color: Colors.black,
//                                                     fontSize:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             88,
//                                                     letterSpacing: 0),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ]),
//                                   ]),
//                             ),
//                           ),
//                   ),
//                   Container(
//                     child: MRANDMRS.sharedprefs!.getDouble(
//                                 "subtotal+$widget.queryDocumentSnapshot['id']") ==
//                             0
//                         ? SizedBox()
//                         : Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 25.0, right: 25),
//                             child: Container(
//                               height: MediaQuery.of(context).size.height - 200,
//                               decoration: BoxDecoration(
//                                   color: Colors.white10,
//                                   borderRadius: BorderRadius.circular(5)),
//                               child: StreamBuilder<QuerySnapshot>(
//                                   stream: FirebaseFirestore.instance
//                                       .collection("SearchProducts")
//                                       .doc(widget.queryDocumentSnapshot['id'])
//                                       .collection("others")
//                                       .snapshots(),
//                                   builder: (context, snapshot) {
//                                     if (!snapshot.hasData) {
//                                       return Center(
//                                         child: CircularProgressIndicator(),
//                                       );
//                                     } else {
//                                       return Scrollbar(
//                                         child: ListView.builder(
//                                             scrollDirection: Axis.vertical,
//                                             itemCount:
//                                                 snapshot.data!.docs.length,
//                                             itemBuilder: (BuildContext context,
//                                                 int index) {
//                                               return Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(0.0),
//                                                 child: GestureDetector(
//                                                   onTap: () {},
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(5)),
//                                                     height: 48,
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsets.all(
//                                                               0.0),
//                                                       child: Container(
//                                                         width: MediaQuery.of(
//                                                                 context)
//                                                             .size
//                                                             .width,
//                                                         child: Table(
//                                                           textDirection:
//                                                               TextDirection.ltr,
//                                                           defaultVerticalAlignment:
//                                                               TableCellVerticalAlignment
//                                                                   .middle,
//                                                           border:
//                                                               TableBorder.all(
//                                                                   width: 1.0,
//                                                                   color: Colors
//                                                                       .black),

//                                                           //  border:TableBorder.symmetric(),

//                                                           defaultColumnWidth:
//                                                               FlexColumnWidth(
//                                                                   30),
//                                                           children: [
//                                                             TableRow(children: [
//                                                               // TableCell(
//                                                               //   //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                               //   child: Padding(
//                                                               //     padding:
//                                                               //         const EdgeInsets
//                                                               //                 .all(
//                                                               //             15.0),
//                                                               //     child: Center(
//                                                               //       child:
//                                                               //           GestureDetector(
//                                                               //         onTap:
//                                                               //             () {
//                                                               //           showDialog(
//                                                               //               context:
//                                                               //                   context,
//                                                               //               builder:
//                                                               //                   (BuildContext context) {
//                                                               //                 return Dialog(
//                                                               //                     shape: RoundedRectangleBorder(
//                                                               //                       borderRadius: BorderRadius.circular(4),
//                                                               //                     ),
//                                                               //                     elevation: 0,
//                                                               //                     backgroundColor: Colors.transparent,
//                                                               //                     child: Container(
//                                                               //                       height: 180,
//                                                               //                       width: 400,
//                                                               //                       decoration: BoxDecoration(
//                                                               //                         shape: BoxShape.rectangle,
//                                                               //                         color: Colors.grey[100],
//                                                               //                         borderRadius: BorderRadius.circular(4),
//                                                               //                       ),
//                                                               //                       child: Column(
//                                                               //                         children: <Widget>[
//                                                               //                           SizedBox(
//                                                               //                             height: 20,
//                                                               //                           ),
//                                                               //                           Text(
//                                                               //                             "Edit Info",
//                                                               //                             style: GoogleFonts.josefinSans(
//                                                               //                               textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                               //                             ),
//                                                               //                           ),
//                                                               //                           Padding(
//                                                               //                             padding: const EdgeInsets.all(10.0),
//                                                               //                             child: Container(
//                                                               //                               height: 50,
//                                                               //                               width: 300,
//                                                               //                               decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
//                                                               //                               child: Padding(
//                                                               //                                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                               //                                 child: TextField(
//                                                               //                                   textCapitalization: TextCapitalization.sentences,
//                                                               //                                   style: TextStyle(color: Colors.black),
//                                                               //                                   controller: namecontroller,
//                                                               //                                   keyboardType: TextInputType.name,
//                                                               //                                   decoration: InputDecoration(
//                                                               //                                     border: InputBorder.none,
//                                                               //                                     labelText: "Type Of Wood",
//                                                               //                                     labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                               //                                   ),
//                                                               //                                 ),
//                                                               //                               ),
//                                                               //                             ),
//                                                               //                           ),
//                                                               //                           SizedBox(height: 10),
//                                                               //                           GestureDetector(
//                                                               //                             onTap: () {
//                                                               //                               setState(() {
//                                                               //                                 FirebaseFirestore.instance
//                                                               //                                     .collection("SearchProducts")
//                                                               //                                     .doc(widget.queryDocumentSnapshot['id'])
//                                                               //                                     .collection("others")
//                                                               //                                     .doc(
//                                                               //                                       snapshot.data.docs[index]['serial'],
//                                                               //                                     )
//                                                               //                                     .update({"serial": namecontroller.text.toString()});
//                                                               //                                 FirebaseFirestore.instance
//                                                               //                                     .collection("Items")
//                                                               //                                     .doc(widget.queryDocumentSnapshot['category'])
//                                                               //                                     .collection("Products")
//                                                               //                                     .doc(widget.queryDocumentSnapshot['id'])
//                                                               //                                     .collection("others")
//                                                               //                                     .doc(
//                                                               //                                       snapshot.data.docs[index]['serial'],
//                                                               //                                     )
//                                                               //                                     .update({"serial": namecontroller.text.toString()})
//                                                               //                                     .whenComplete(() => Toast.show("Items Updated Successfully", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM))
//                                                               //                                     .then((value) {
//                                                               //                                       Navigator.pop(context);
//                                                               //                                       Navigator.pop(context);
//                                                               //                                       //   Phoenix.rebirth(context);
//                                                               //                                       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                               //                                       //   return Homer();
//                                                               //                                       // }));
//                                                               //                                     });
//                                                               //                               });
//                                                               //                             },
//                                                               //                             child: Container(
//                                                               //                                 height: 30,
//                                                               //                                 width: 80,
//                                                               //                                 child: Center(
//                                                               //                                   child: Text(
//                                                               //                                     "update",
//                                                               //                                     style: GoogleFonts.josefinSans(
//                                                               //                                       textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                               //                                     ),
//                                                               //                                   ),
//                                                               //                                 ),
//                                                               //                                 decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                               //                           )
//                                                               //                         ],
//                                                               //                       ),
//                                                               //                     ));
//                                                               //               });
//                                                               //         },
//                                                               //         child:
//                                                               //             Text(
//                                                               //           snapshot
//                                                               //               .data
//                                                               //               .docs[index]['serial'],
//                                                               //           style: GoogleFonts
//                                                               //               .josefinSans(
//                                                               //             textStyle: TextStyle(
//                                                               //                 fontWeight: FontWeight.bold,
//                                                               //                 color: Colors.black,
//                                                               //                 fontSize: MediaQuery.of(context).size.width / 88,
//                                                               //                 letterSpacing: 0),
//                                                               //           ),
//                                                               //         ),
//                                                               //       ),
//                                                               //     ),
//                                                               //   ),
//                                                               // ),
//                                                               TableCell(
//                                                                 //  verticalAlignment: TableCellVerticalAlignment.baseline,

//                                                                 child: Padding(
//                                                                   padding:
//                                                                       const EdgeInsets
//                                                                               .all(
//                                                                           15.0),
//                                                                   child: Center(
//                                                                     child:
//                                                                         GestureDetector(
//                                                                       onTap:
//                                                                           () {
//                                                                         showDialog(
//                                                                             context:
//                                                                                 context,
//                                                                             builder:
//                                                                                 (BuildContext context) {
//                                                                               return Dialog(
//                                                                                   shape: RoundedRectangleBorder(
//                                                                                     borderRadius: BorderRadius.circular(20),
//                                                                                   ),
//                                                                                   elevation: 0,
//                                                                                   backgroundColor: Colors.transparent,
//                                                                                   child: Container(
//                                                                                     height: 200,
//                                                                                     width: 400,
//                                                                                     decoration: BoxDecoration(
//                                                                                       shape: BoxShape.rectangle,
//                                                                                       color: Colors.grey[100],
//                                                                                       borderRadius: BorderRadius.circular(5),
//                                                                                     ),
//                                                                                     child: Column(
//                                                                                       children: <Widget>[
//                                                                                         SizedBox(
//                                                                                           height: 20,
//                                                                                         ),
//                                                                                         Text(
//                                                                                           "Edit Info",
//                                                                                           style: GoogleFonts.josefinSans(
//                                                                                             textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                           ),
//                                                                                         ),
//                                                                                         Padding(
//                                                                                           padding: const EdgeInsets.all(10.0),
//                                                                                           child: EnhancedDropDown.withData(
//                                                                                               dropdownLabelTitle: "",
//                                                                                               dataSource: expense,
//                                                                                               defaultOptionText: "",
//                                                                                               valueReturned: (chosen) {
//                                                                                                 print(chosen);
//                                                                                                 setState(() {
//                                                                                                   expensetype = chosen;
//                                                                                                 });
//                                                                                               }),
//                                                                                         ),
//                                                                                         SizedBox(height: 10),
//                                                                                         GestureDetector(
//                                                                                           onTap: () {
//                                                                                             setState(() {
//                                                                                               FirebaseFirestore.instance
//                                                                                                   .collection("Products")
//                                                                                                   .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                   .collection("others")
//                                                                                                   .doc(
//                                                                                                     snapshot.data.docs[index]['serial'],
//                                                                                                   )
//                                                                                                   .update({"comments": expensetype});
//                                                                                               FirebaseFirestore.instance
//                                                                                                   .collection("SearchProducts")
//                                                                                                   .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                   .collection("others")
//                                                                                                   .doc(
//                                                                                                     snapshot.data.docs[index]['serial'],
//                                                                                                   )
//                                                                                                   .update({"comments": expensetype})
//                                                                                                   .whenComplete(() => Toast.show("Items Updated Successfully", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM))
//                                                                                                   .then((value) {
//                                                                                                     Navigator.pop(context);
//                                                                                                     Navigator.pop(context);
//                                                                                                   });
//                                                                                             });
//                                                                                           },
//                                                                                           child: Container(
//                                                                                               height: 30,
//                                                                                               width: 80,
//                                                                                               child: Center(
//                                                                                                 child: Text(
//                                                                                                   "update",
//                                                                                                   style: GoogleFonts.josefinSans(
//                                                                                                     textStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                         )
//                                                                                       ],
//                                                                                     ),
//                                                                                   ));
//                                                                             });
//                                                                       },
//                                                                       child:
//                                                                           Text(
//                                                                         snapshot
//                                                                             .data
//                                                                             !.docs[index]['comments'],
//                                                                         style: GoogleFonts
//                                                                             .josefinSans(
//                                                                           textStyle: TextStyle(
//                                                                               fontWeight: FontWeight.bold,
//                                                                               color: Colors.black,
//                                                                               fontSize: MediaQuery.of(context).size.width / 131,
//                                                                               letterSpacing: 0),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               TableCell(
//                                                                 child: Padding(
//                                                                   padding:
//                                                                       const EdgeInsets
//                                                                               .all(
//                                                                           15.0),
//                                                                   child: Center(
//                                                                     child:
//                                                                         GestureDetector(
//                                                                       onTap:
//                                                                           () {
//                                                                         showDialog(
//                                                                             context:
//                                                                                 context,
//                                                                             builder:
//                                                                                 (BuildContext context) {
//                                                                               return Dialog(
//                                                                                   shape: RoundedRectangleBorder(
//                                                                                     borderRadius: BorderRadius.circular(4),
//                                                                                   ),
//                                                                                   elevation: 0,
//                                                                                   backgroundColor: Colors.transparent,
//                                                                                   child: Container(
//                                                                                     height: 180,
//                                                                                     width: 400,
//                                                                                     decoration: BoxDecoration(
//                                                                                       shape: BoxShape.rectangle,
//                                                                                       color: Colors.grey[100],
//                                                                                       borderRadius: BorderRadius.circular(4),
//                                                                                     ),
//                                                                                     child: Column(
//                                                                                       children: <Widget>[
//                                                                                         SizedBox(
//                                                                                           height: 20,
//                                                                                         ),
//                                                                                         Text(
//                                                                                           "Edit Info",
//                                                                                           style: GoogleFonts.josefinSans(
//                                                                                             textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
//                                                                                           ),
//                                                                                         ),
//                                                                                         Padding(
//                                                                                           padding: const EdgeInsets.all(10.0),
//                                                                                           child: Container(
//                                                                                             height: 50,
//                                                                                             width: 300,
//                                                                                             decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
//                                                                                             child: Padding(
//                                                                                               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                                                                               child: TextField(
//                                                                                                 textCapitalization: TextCapitalization.sentences,
//                                                                                                 style: TextStyle(color: Colors.black),
//                                                                                                 controller: namecontroller,
//                                                                                                 keyboardType: TextInputType.name,
//                                                                                                 decoration: InputDecoration(
//                                                                                                   border: InputBorder.none,
//                                                                                                   labelText: "Rate",
//                                                                                                   labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
//                                                                                                 ),
//                                                                                               ),
//                                                                                             ),
//                                                                                           ),
//                                                                                         ),
//                                                                                         SizedBox(
//                                                                                           height: 10,
//                                                                                         ),
//                                                                                         GestureDetector(
//                                                                                           onTap: () {
//                                                                                             setState(() {
//                                                                                               FirebaseFirestore.instance
//                                                                                                   .collection("Products")
//                                                                                                   .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                   .collection("others")
//                                                                                                   .doc(
//                                                                                                     snapshot.data!.docs[index]['serial'],
//                                                                                                   )
//                                                                                                   .update({"rate": double.parse(namecontroller.value.text)});
//                                                                                               FirebaseFirestore.instance
//                                                                                                   .collection("SearchProducts")
//                                                                                                   .doc(widget.queryDocumentSnapshot['id'])
//                                                                                                   .collection("others")
//                                                                                                   .doc(
//                                                                                                     snapshot.data!.docs[index]['serial'],
//                                                                                                   )
//                                                                                                   .update({"rate": double.parse(namecontroller.value.text)})
//                                                                                                   .whenComplete(() => EasyLoading.showToast("done"))
//                                                                                                   .then((value) {
//                                                                                                     Navigator.pop(context);
//                                                                                                     Navigator.pop(context);

//                                                                                                     //   Phoenix.rebirth(context);
//                                                                                                     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
//                                                                                                     //   return Homer();
//                                                                                                     // }));
//                                                                                                   });
//                                                                                             });
//                                                                                           },
//                                                                                           child: Container(
//                                                                                               height: 30,
//                                                                                               width: 80,
//                                                                                               child: Center(
//                                                                                                 child: Text(
//                                                                                                   "update",
//                                                                                                   style: GoogleFonts.josefinSans(
//                                                                                                     textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
//                                                                                                   ),
//                                                                                                 ),
//                                                                                               ),
//                                                                                               decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
//                                                                                         )
//                                                                                       ],
//                                                                                     ),
//                                                                                   ));
//                                                                             });
//                                                                       },
//                                                                       child:
//                                                                           Text(
//                                                                         snapshot
//                                                                             .data
//                                                                             !.docs[index]['rate']
//                                                                             .toString(),
//                                                                         style: GoogleFonts
//                                                                             .josefinSans(
//                                                                           textStyle: TextStyle(
//                                                                               fontWeight: FontWeight.bold,
//                                                                               color: Colors.black,
//                                                                               fontSize: MediaQuery.of(context).size.width / 88,
//                                                                               letterSpacing: 0),
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ]),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               );
//                                             }),
//                                       );
//                                     }
//                                   }),
//                             ),
//                           ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//             endfooter(widget: widget)
//           ],
//         ),
//       ),
//     );
//   }
// }

// class endfooter extends StatelessWidget {
//   const endfooter({
//     Key? key,
//     required this.widget,
//   }) : super(key: key);

//   final Detailer widget;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         child: SizedBox(
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onDoubleTap: () {
//                       FirebaseFirestore.instance
//                           .collection('Products')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("Images")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('SearchProducts')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("Images")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('Products')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("WoodList")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('SearchProducts')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("WoodList")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });

//                       FirebaseFirestore.instance
//                           .collection('Products')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("materials")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('SearchProducts')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("materials")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('Products')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("others")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('SearchProducts')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("others")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });

//                       FirebaseFirestore.instance
//                           .collection('Products')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("files")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('SearchProducts')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("files")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('Products')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("links")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection('SearchProducts')
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .collection("links")
//                           .get()
//                           .then((snapshot) {
//                         for (DocumentSnapshot doc in snapshot.docs) {
//                           doc.reference.delete();
//                         }
//                         ;
//                       });
//                       FirebaseFirestore.instance
//                           .collection("Products")
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .delete();
//                       FirebaseFirestore.instance
//                           .collection("SearchProducts")
//                           .doc(widget.queryDocumentSnapshot['id'])
//                           .delete()
//                           .then((value) {
//                         Navigator.pop(context);
//                         EasyLoading.showToast("done");
//                       });
//                     },
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                         image: NetworkImage(
//                             "https://i.ibb.co/CmvMQFC/Picture2-1-1-removebg-preview.png"),
//                       )),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     children: [
//                       Divider(color: Colors.black),
//                       Text(
//                         "MR AND MRS",
//                         style: GoogleFonts.lato(
//                           textStyle: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               fontSize: 8,
//                               letterSpacing: 1),
//                         ),
//                       ),
//                       Text(
//                         "DESIGN WOOD WORKS",
//                         style: GoogleFonts.lato(
//                           textStyle: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               fontSize: 6,
//                               letterSpacing: 1),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             height: 50)
// ,
//       ),
//     );
//   }
// }




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/users/views/Helper.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'HomeScreenWidgets/HomeWidgets.dart';
import 'Widgets/Custom_Widgets.dart';

class DetailProductScreens extends StatefulWidget {
  final DocumentSnapshot queryDocumentSnapshot;
  const DetailProductScreens({Key? key, required this.queryDocumentSnapshot})
      : super(key: key);

  @override
  State<DetailProductScreens> createState() => _DetailProductScreensState();
}

class _DetailProductScreensState extends State<DetailProductScreens> {
  double otherexpense = 0;
  double itemsexpense = 0;
  double reqexpense = 0;
  List<String> reqwoodlist = [];
  List<String> expense = [];
  String? reqwoodtype;
  String? expensetype;
  int? imageno;
  int? fileno;
  int? videono;
  int? reqno;
  int? expno;
  String? imgurl;
  String woodtype = " ";
  int quanityvalue = 1;
  int woodhas = 0;
  List _reqexpense = [];
  int materials = 0;
  int others = 0;
  int salesprice = 0;
  int link = 0;
  int filelink = 0;
  String? fileurl;
  String? imagesurl;
  List _woodlist = [];
  ScrollController? _controller;
  ScrollController _imagecontroller = ScrollController();
  TextEditingController tdimensioncontroller = new TextEditingController();
  TextEditingController hdimensioncontroller = new TextEditingController();
  TextEditingController wdimensioncontroller = new TextEditingController();
  TextEditingController ddimensioncontroller = new TextEditingController();
  TextEditingController serialcontroller = new TextEditingController();
  TextEditingController expensecontroller = new TextEditingController();
  TextEditingController itemcontroller = new TextEditingController();
  TextEditingController commentscontroller = new TextEditingController();
  TextEditingController qnocontroller = new TextEditingController();
  TextEditingController litemdimensioncontroller = new TextEditingController();
  TextEditingController witemdimensioncontroller = new TextEditingController();
  TextEditingController categorycontroller = new TextEditingController();
  TextEditingController productidcontroller = new TextEditingController();
  TextEditingController ratecontroller = new TextEditingController();

  @override
  void initState() {
    print(widget.queryDocumentSnapshot['id']);
    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("Images")
        .get()
        .then((imagecount) {
      setState(() {
        imageno = imagecount.size;
        print("IMAGE" + imagecount.size.toString());
      });
    });
    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("files")
        .get()
        .then((imagecount) {
      setState(() {
        fileno = imagecount.size;
        print("IMAGE" + imagecount.size.toString());
      });
    });
    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("materials")
        .get()
        .then((imagecount) {
      setState(() {
        reqno = imagecount.size;
        print("IMAGE" + imagecount.size.toString());
      });
    });
    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("others")
        .get()
        .then((imagecount) {
      setState(() {
        expno = imagecount.size;
      });
    });
    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("links")
        .get()
        .then((imagecount) {
      setState(() {
        videono = imagecount.size + 1;
      });
    });
    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("WoodList")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        setState(() {
          reqwoodlist.add(element.data()['name']);
          print(reqwoodlist);
        });
      });
    });
    FirebaseFirestore.instance.collection("Expense").get().then((value) {
      value.docs.forEach((element) {
        setState(() {
          expense.add(element.data()['name']);
        });
      });
    });

    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("materials")
        .get()
        .then((value) {
      if (value.docs.length == 0) {
        MRANDMRS.sharedprefs!
            .setDouble("total+$widget.queryDocumentSnapshot['id']", 0);
        print("Lenght of Others is Zero");
      } else {
        value.docs.forEach((element) {
          setState(() {
            _reqexpense.add((((element.data()['tvalue'] *
                        element.data()['wvalue'] *
                        element.data()['lvalue']) /
                    1728 *
                    element.data()['quantity']) *
                element.data()['rate']));
          });
        });
        _reqexpense.forEach((value) {
          reqexpense = reqexpense + value;
          setState(() {
            MRANDMRS.sharedprefs!.setDouble(
                "total+$widget.queryDocumentSnapshot['id']", reqexpense);
          });
        });
      }
    });

    //     value.docs.forEach((element) {
    //       setState(() {
    //         ///(((((dex]['quantity']))) * snapshot.data.docs[index]['rate']).toStringAsFixed(2)
    //         _reqexpense.add((((element.data()['tvalue'] *
    //                     element.data()['wvalue'] *
    //                     element.data()['lvalue']) /
    //                 1728 *
    //                 element.data()['quantity']) *
    //             element.data()['rate']));
    //         print(_reqexpense);
    //       });
    //     });

    // }).then((value) {
    //   _reqexpense.forEach((value) {
    //     reqexpense = reqexpense + value;
    //     setState(() {
    //       MrandMrs.sharedprefs.setDouble(
    //           "total+$widget.queryDocumentSnapshot['id']", reqexpense);
    //     });

    //   });
    // }).then((value) =>
    //        print("ije" +
    //             MrandMrs.sharedprefs
    //                 .getDouble("total+$widget.queryDocumentSnapshot['id']")
    //                 .toStringAsFixed(2)));

    FirebaseFirestore.instance
        .collection("SearchProducts")
        .doc(widget.queryDocumentSnapshot['id'])
        .collection("others")
        .get()
        .then((value) {
      if (value.docs.length == 0) {
        MRANDMRS.sharedprefs!
            .setDouble("subtotal+$widget.queryDocumentSnapshot['id']", 0);
        print("Lenght of Others is Zero");
      } else {
        value.docs.forEach((element) {
          otherexpense = otherexpense + element.data()['rate'];
          MRANDMRS.sharedprefs!.setDouble(
              "subtotal+$widget.queryDocumentSnapshot['id']",
              otherexpense.toDouble());
          print("No Is Has Minimum one Items");
        });
      }
    });

    FirebaseFirestore.instance
        .collection('SearchProducts')
        .doc(widget.queryDocumentSnapshot['id'])
        .collection('WoodList')
        .get()
        .then((value) {
      print("no" + value.size.toString());
      setState(() {
        woodhas = value.size.toInt();
      });
    });

    _reqexpense.forEach((element) {
      print("hi");
    });
    FirebaseFirestore.instance
        .collection('SearchProducts')
        .doc(widget.queryDocumentSnapshot['id'])
        .collection('links')
        .get()
        .then((value) {
      print("no" + value.size.toString());
      setState(() {
        link = value.size.toInt();
      });
    });
    FirebaseFirestore.instance
        .collection('SearchProducts')
        .doc(widget.queryDocumentSnapshot['id'])
        .collection('files')
        .get()
        .then((value) {
      print("no" + value.size.toString());
      setState(() {
        filelink = value.size.toInt();
      });
    });
    FirebaseFirestore.instance
        .collection('SearchProducts')
        .doc(widget.queryDocumentSnapshot['id'])
        .collection('materials')
        .get()
        .then((value) {
      print("no" + value.size.toString());
      setState(() {
        materials = value.size.toInt();
      });
    });
    FirebaseFirestore.instance
        .collection('SearchProducts')
        .doc(widget.queryDocumentSnapshot['id'])
        .collection('others')
        .get()
        .then((value) {
      print("no" + value.size.toString());
      setState(() {
        others = value.size.toInt();
      });
    });
    // MrandMrs.sharedprefs.setDouble(
    //     "finaltotal+$widget.queryDocumentSnapshot['id']",
    //     MrandMrs.sharedprefs
    //             .getDouble("total+$widget.queryDocumentSnapshot['id']") +
    //         MrandMrs.sharedprefs
    //             .getInt("subtotal+$widget.queryDocumentSnapshot['id']"));

    String _imgurl = widget.queryDocumentSnapshot["mainimage"];
    super.initState();
    setState(() {
      imgurl = _imgurl;
    });
  }

  TextEditingController namecontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
               
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                 TopNotifyBlackBox(),
               TitleWebBox(),
                Box(height: 40, width: 0),
                  Text(
                    "PRODUCT",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 2),
                    ),
                  ),
                 Box(height: 40, width: 0),

                 Container(
                   width: MediaQuery.of(context).size.width,
                   height: 500,
                   child: Row(
                     
                     children: [
                        Container(
                        width: 100,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection("SearchProducts")
                                .doc(
                                    widget.queryDocumentSnapshot["id"].toString())
                                .collection("Images")
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return Text(
                                  'No Data...',
                                );
                              } else {
                                return Scrollbar(
                                  child: ListView.builder(
                                      controller: _imagecontroller,
                                      scrollDirection: Axis.vertical,
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: GestureDetector(
                                            onDoubleTap: () {},
                                            onLongPress: () {
                                              launch(snapshot.data!.docs[index]
                                                  ['imgurl']);
                                            },
                                            onTap: () {
                                              setState(() {
                                                imgurl = snapshot
                                                    .data!.docs[index]['imgurl'];
                                                print(imgurl);
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 80,
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              snapshot.data!
                                                                      .docs[index]
                                                                  ['imgurl']),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                );
                              }
                            }),
                        height: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white70,
                        ),
                      ),
                       SizedBox(
                      width: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                            image: NetworkImage(imgurl.toString()),
                            fit: BoxFit.contain),
                        color: Colors.white,
                      ),
                      height: 500,
                      width: 500,
                    ),

                      SizedBox(
                      width: 80,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 500,
                          width: 500,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.queryDocumentSnapshot['name']
                                      .toString()
                                      .toUpperCase(),
                                  style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 1.5),
                                  ),
                                ),

                                Box(height: 15, width: 0),
                                Text(
                                  "RS : " +
                                      widget.queryDocumentSnapshot['oprice']
                                          .toString()
                                          .toUpperCase(),
                                  style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 1.5),
                                  ),
                                ),
                                Box(height: 15, width: 0),
                                Container(
                                  height: 0.5,
                                  color: Colors.black,
                                  width: 300,
                                ),
                                //tod
                                Box(height: 10, width: 0),
                                Text(
                                  widget.queryDocumentSnapshot['Description']
                                      .toString(),
                                  style: GoogleFonts.dmSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 15,
                                        height: 2,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                Box(height: 5, width: 0),
                                Text(
                                  "Material    :    " +
                                      reqwoodlist
                                          .toString()
                                          .toLowerCase()
                                          .replaceAll(",", "|")
                                          .replaceAll("[", "")
                                          .replaceAll("]", ""),
                                  style: GoogleFonts.dmSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 0),
                                  ),
                                ),

                                Box(height: 10, width: 0),
                               
                                Container(
                                  height: 108,
                                  child: StreamBuilder<QuerySnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection("SearchProducts")
                                          .doc(widget
                                              .queryDocumentSnapshot["id"]
                                              .toString())
                                          .collection("WoodList")
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (snapshot.data == null) {
                                          return Center(
                                            child: Text(
                                              'Loading',
                                            ),
                                          );
                                        } else {
                                          return Scrollbar(
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    snapshot.data!.docs.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        // setState(() {
                                                        //   woodtype = snapshot
                                                        //       .data.docs[index]['name'];
                                                        // });
                                                        print(woodtype);
                                                      },
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors
                                                                .transparent,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        height: 80,
                                                        width: 80,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  image: DecorationImage(
                                                                      image: NetworkImage(snapshot
                                                                              .data!
                                                                              .docs[index]
                                                                          [
                                                                          'image']),
                                                                      fit: BoxFit
                                                                          .cover),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                              height: 70,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                          );
                                        }
                                      }),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                ),

                           
                                
                        ])))
                     ],
                   ),

                   
                 ),    SizedBox(height: 40,),
                   

                 
                                Container(
                                  
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                 "                           QUANTITY : ",
                                  style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 1.5),
                                  ),
                                ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              quanityvalue++;
                                            });
                                          },
                                          icon: Icon(Icons.add_circle_outline)),
                                      Container(
                                          child: Center(
                                            child: Text(
                                              quanityvalue.toString(),
                                              style: GoogleFonts.josefinSans(
                                                textStyle: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(2)),
                                          height: 30,
                                          width: 30),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (quanityvalue >= 2) {
                                                quanityvalue--;
                                              }
                                            });
                                          },
                                          icon: Icon(Icons.remove_circle_outline)),
                                          SizedBox(width: 80,),

                                           GestureDetector(
                                             onTap: (){
                                                FirebaseFirestore.instance
                        .collection("users")
                        .doc(MRANDMRS.sharedprefs!.getString("uid"))
                        .collection("cart")
                        .doc(widget.queryDocumentSnapshot["id"])
                        .set({
                      "Description":
                          widget.queryDocumentSnapshot["Description"],
                      // "price": widget.queryDocumentSnapshot["price"],
                      "oprice": widget.queryDocumentSnapshot["oprice"],
                      "category": widget.queryDocumentSnapshot["category"],
                      "name": widget.queryDocumentSnapshot["name"],
                      "id": widget.queryDocumentSnapshot["id"],
                      "mainimage": widget.queryDocumentSnapshot["mainimage"],
                      "quanity": quanityvalue,
                      "wood": woodtype
                    });
                                             },
                                             child: Container(
                                                        height: 40,
                                                        width: 200,
                                                        child: Center(
                                                          child: Text(
                                                            "ADD TO CART",
                                                            style: GoogleFonts
                                                                .dmSans(
                                                              textStyle: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 13,
                                                                  letterSpacing:
                                                                      0),
                                                            ),
                                                          ),
                                                        ),
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                           ),
                                    ],
                                  )),
                                  height: 50,
                                  width:MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(5)),
                                ),

                 Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     SizedBox(height: 20,),
                   
                        
                       
                        
                        Padding(
                                  padding: const EdgeInsets.only(top: 15,),
                                  child: Container(
                                     height: 300,
                                     width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "PRODUCT DETAILS",
                                          style: GoogleFonts.josefinSans(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16,
                                                letterSpacing: 0),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Table(
                                            textDirection: TextDirection.ltr,
                                            defaultVerticalAlignment:
                                                TableCellVerticalAlignment
                                                    .middle,
                                            border: TableBorder.all(
                                                width: 0.5, color: lettercolor),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                  height: 40,
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Center(
                                                          child: Text(
                                                            "BRAND",
                                                            style: GoogleFonts
                                                                .josefinSans(
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      lettercolor,
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Center(
                                                          child: Text(
                                                            "MR AND MRS",
                                                            style: GoogleFonts
                                                                .josefinSans(
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      lettercolor,
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                  height: 40,
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Center(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {},
                                                            child: Text(
                                                              "DIMENSIONS",
                                                              style: GoogleFonts
                                                                  .josefinSans(
                                                                textStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color:
                                                                        lettercolor,
                                                                    fontSize:
                                                                        12,
                                                                    letterSpacing:
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return Dialog(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4),
                                                                      ),
                                                                      elevation:
                                                                          0,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            180,
                                                                        width:
                                                                            400,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.rectangle,
                                                                          color:
                                                                              Colors.grey[100],
                                                                          borderRadius:
                                                                              BorderRadius.circular(4),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          children: <
                                                                              Widget>[
                                                                            SizedBox(
                                                                              height: 20,
                                                                            ),
                                                                            Text(
                                                                              "Edit Info",
                                                                              style: GoogleFonts.josefinSans(
                                                                                textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Container(
                                                                                height: 50,
                                                                                width: 300,
                                                                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                                                  child: TextField(
                                                                                    textCapitalization: TextCapitalization.sentences,
                                                                                    style: TextStyle(color: Colors.black),
                                                                                    controller: namecontroller,
                                                                                    keyboardType: TextInputType.name,
                                                                                    decoration: InputDecoration(
                                                                                      border: InputBorder.none,
                                                                                      labelText: "Height",
                                                                                      labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 2),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 10),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  FirebaseFirestore.instance.collection("Products").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                    "height": namecontroller.text.toString()
                                                                                  });
                                                                                  FirebaseFirestore.instance.collection("SearchProducts").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                    "height": namecontroller.text.toString()
                                                                                  }).then((value) {
                                                                                    Navigator.pop(context);
                                                                                    Navigator.pop(context);
                                                                                  });
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                  height: 30,
                                                                                  width: 80,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      "update",
                                                                                      style: GoogleFonts.josefinSans(
                                                                                        textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ));
                                                                });
                                                          },
                                                          child: Text(
                                                            " H " +
                                                                widget.queryDocumentSnapshot[
                                                                    'height'],
                                                            style: GoogleFonts
                                                                .josefinSans(
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      lettercolor,
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return Dialog(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4),
                                                                      ),
                                                                      elevation:
                                                                          0,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            180,
                                                                        width:
                                                                            400,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.rectangle,
                                                                          color:
                                                                              Colors.grey[100],
                                                                          borderRadius:
                                                                              BorderRadius.circular(4),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          children: <
                                                                              Widget>[
                                                                            SizedBox(
                                                                              height: 20,
                                                                            ),
                                                                            Text(
                                                                              "Edit Info",
                                                                              style: GoogleFonts.josefinSans(
                                                                                textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Container(
                                                                                height: 50,
                                                                                width: 300,
                                                                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                                                  child: TextField(
                                                                                    textCapitalization: TextCapitalization.sentences,
                                                                                    style: TextStyle(color: Colors.black),
                                                                                    controller: namecontroller,
                                                                                    keyboardType: TextInputType.name,
                                                                                    decoration: InputDecoration(
                                                                                      border: InputBorder.none,
                                                                                      labelText: "Width",
                                                                                      labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 2),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 10),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  FirebaseFirestore.instance.collection("Products").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                    "width": namecontroller.text.toString()
                                                                                  });
                                                                                  FirebaseFirestore.instance.collection("SearchProducts").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                    "width": namecontroller.text.toString()
                                                                                  }).then((value) {
                                                                                    Navigator.pop(context);
                                                                                    Navigator.pop(context);
                                                                                    //   Phoenix.rebirth(context);
                                                                                    // Navigator.pushReplacement(
                                                                                    //     context,
                                                                                    //     MaterialPageRoute(
                                                                                    //         builder:
                                                                                    //             (c) {
                                                                                    //   return Homer();
                                                                                    // }));
                                                                                  });
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                  height: 30,
                                                                                  width: 80,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      "update",
                                                                                      style: GoogleFonts.josefinSans(
                                                                                        textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ));
                                                                });
                                                          },
                                                          child: Text(
                                                            " * W " +
                                                                widget.queryDocumentSnapshot[
                                                                    'width'],
                                                            style: GoogleFonts
                                                                .josefinSans(
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      lettercolor,
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return Dialog(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4),
                                                                      ),
                                                                      elevation:
                                                                          0,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            180,
                                                                        width:
                                                                            400,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.rectangle,
                                                                          color:
                                                                              Colors.grey[100],
                                                                          borderRadius:
                                                                              BorderRadius.circular(4),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          children: <
                                                                              Widget>[
                                                                            SizedBox(
                                                                              height: 20,
                                                                            ),
                                                                            Text(
                                                                              "EDIT INFO",
                                                                              style: GoogleFonts.josefinSans(
                                                                                textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 1),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Container(
                                                                                height: 50,
                                                                                width: 300,
                                                                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                                                  child: TextField(
                                                                                    textCapitalization: TextCapitalization.sentences,
                                                                                    style: TextStyle(color: Colors.black),
                                                                                    controller: namecontroller,
                                                                                    keyboardType: TextInputType.name,
                                                                                    decoration: InputDecoration(
                                                                                      border: InputBorder.none,
                                                                                      labelText: "Lenght",
                                                                                      labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 2),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  FirebaseFirestore.instance.collection("Products").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                    "lenght": namecontroller.text.toString()
                                                                                  });
                                                                                  FirebaseFirestore.instance.collection("SearchProducts").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                    "lenght": namecontroller.text.toString()
                                                                                  }).then((value) {
                                                                                    Navigator.pop(context);
                                                                                    Navigator.pop(context);
                                                                                  });
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                  height: 30,
                                                                                  width: 80,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      "update",
                                                                                      style: GoogleFonts.josefinSans(
                                                                                        textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11, letterSpacing: 0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ));
                                                                });
                                                          },
                                                          child: Text(
                                                            " * L " +
                                                                widget.queryDocumentSnapshot[
                                                                    'lenght'] +
                                                                " (In Inches)",
                                                            style: GoogleFonts
                                                                .josefinSans(
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      lettercolor,
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      1),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                  height: 40,
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Center(
                                                          child:
                                                              GestureDetector(
                                                            child: Text(
                                                              "WEIGHT",
                                                              style: GoogleFonts
                                                                  .josefinSans(
                                                                textStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color:
                                                                        lettercolor,
                                                                    fontSize:
                                                                        12,
                                                                    letterSpacing:
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Center(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return Dialog(
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4),
                                                                        ),
                                                                        elevation:
                                                                            0,
                                                                        backgroundColor:
                                                                            Colors
                                                                                .transparent,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              180,
                                                                          width:
                                                                              400,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                            color:
                                                                                Colors.grey[100],
                                                                            borderRadius:
                                                                                BorderRadius.circular(4),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            children: <Widget>[
                                                                              SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              Text(
                                                                                "Edit Info",
                                                                                style: GoogleFonts.josefinSans(
                                                                                  textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18, letterSpacing: 0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Container(
                                                                                  height: 50,
                                                                                  width: 300,
                                                                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                                                    child: TextField(
                                                                                      textCapitalization: TextCapitalization.sentences,
                                                                                      style: TextStyle(color: Colors.black),
                                                                                      controller: namecontroller,
                                                                                      keyboardType: TextInputType.name,
                                                                                      decoration: InputDecoration(
                                                                                        border: InputBorder.none,
                                                                                        labelText: "Weight",
                                                                                        labelStyle: TextStyle(color: Colors.black38, fontSize: 12, letterSpacing: 0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  setState(() {
                                                                                    FirebaseFirestore.instance.collection("Products").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                      "weight": namecontroller.text.toString()
                                                                                    });
                                                                                    FirebaseFirestore.instance.collection("SearchProducts").doc(widget.queryDocumentSnapshot['id']).update({
                                                                                      "weight": namecontroller.text.toString()
                                                                                    }).then((value) {
                                                                                      Navigator.pop(context);
                                                                                      Navigator.pop(context);
                                                                                    });
                                                                                  });
                                                                                },
                                                                                child: Container(
                                                                                    height: 30,
                                                                                    width: 80,
                                                                                    child: Center(
                                                                                      child: Text(
                                                                                        "update",
                                                                                        style: GoogleFonts.josefinSans(
                                                                                          textStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 11, letterSpacing: 0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4))),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ));
                                                                  });
                                                            },
                                                            child: Text(
                                                              widget.queryDocumentSnapshot[
                                                                      'weight'] +
                                                                  " kg",
                                                              style: GoogleFonts
                                                                  .josefinSans(
                                                                textStyle: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color:
                                                                        lettercolor,
                                                                    fontSize:
                                                                        12,
                                                                    letterSpacing:
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                            ],
                                          ),
                                        ),
                                         
                                                     SizedBox(
                                  height: 10,
                                ),
                                       
                 
                //   Row(children: [
                //    
                //    
                //   
                               
                                  ],
                 ),
                               
                //               ]),
                //         )),
                        
                //   ]),
                // Row(
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.start,
                //                           children: [
                //                             Column(
                //                               children: [
                //                                 // Container(
                //                                 //   width: 450,
                //                                 //   height: 20,
                //                                 //   child: Row(
                //                                 //     mainAxisAlignment: MainAxisAlignment.end,
                //                                 //     children: [
                //                                 //       IconButton(
                //                                 //           icon: Icon(
                //                                 //             Icons.arrow_back_ios,
                //                                 //             size: 14,
                //                                 //             color: Colors.black,
                //                                 //           ),
                //                                 //           onPressed: () {
                //                                 //             _imagecontroller.animateTo(
                //                                 //                 _imagecontroller.offset - 50,
                //                                 //                 duration: Duration(milliseconds: 200),
                //                                 //                 curve: Curves.ease);
                //                                 //           }),
                //                                 //       IconButton(
                //                                 //           icon: Icon(
                //                                 //             Icons.arrow_forward_ios,
                //                                 //             size: 14,
                //                                 //             color: Colors.black,
                //                                 //           ),
                //                                 //           onPressed: () {
                //                                 //             _imagecontroller.animateTo(
                //                                 //                 _imagecontroller.offset + 50,
                //                                 //                 duration: Duration(milliseconds: 200),
                //                                 //                 curve: Curves.ease);
                //                                 //           })
                //                                 //     ],
                //                                 //   ),
                //                                 // ),
                //                                 // SizedBox(
                //                                 //   height: 20,
                //                                 // ),

                //                                 SizedBox(
                //                                   height: 15,
                //                                 ),

                //                                 SizedBox(
                //                                   height: 30,
                //                                 ),
                //                                 Container(
                //                                   height: 400,
                //                                   width: 500,
                //                                   color: Colors.black38,
                //                                 ),
                //                                 SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 Container(
                //                                   height: 100,
                //                                   width: 500,
                //                                   child: Row(
                //                                     children: [
                //                                       Container(
                //                                         height: 80,
                //                                         width: 80,
                //                                         color: Colors.black38,
                //                                       ),
                //                                       Box(height: 0, width: 10),
                //                                       Container(
                //                                         height: 80,
                //                                         width: 80,
                //                                         color: Colors.black38,
                //                                       ),
                //                                       Box(height: 0, width: 10),
                //                                       Container(
                //                                         height: 80,
                //                                         width: 80,
                //                                         color: Colors.black38,
                //                                       ),
                //                                       Box(height: 0, width: 10),
                //                                       Container(
                //                                         height: 80,
                //                                         width: 80,
                //                                         color: Colors.black38,
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                                 SizedBox(
                //                                   height: 10,
                //                                 )
                //                               ],
                //                             ),
                //                             SizedBox(
                //                               width: 100,
                //                             ),
                //                             Column(
                //                               crossAxisAlignment:
                //                                   CrossAxisAlignment.start,
                //                               mainAxisAlignment:
                //                                   MainAxisAlignment.start,
                //                               children: [
                //                                 Row(
                //                                   children: [
                //                                     Text(
                //                                       "15,000 INR",
                //                                       style: GoogleFonts.dmSans(
                //                                         textStyle: const TextStyle(
                //                                             fontWeight:
                //                                                 FontWeight
                //                                                     .normal,
                //                                             color:
                //                                                 Colors.black54,
                //                                             decoration:
                //                                                 TextDecoration
                //                                                     .lineThrough,
                //                                             fontSize: 13,
                //                                             letterSpacing: 0),
                //                                       ),
                //                                     ),
                //                                     Box(height: 0, width: 10),
                //                                     Text(
                //                                       "12,000 INR",
                //                                       style: GoogleFonts.dmSans(
                //                                         textStyle:
                //                                             const TextStyle(
                //                                                 fontWeight:
                //                                                     FontWeight
                //                                                         .bold,
                //                                                 color: Colors
                //                                                     .black,
                //                                                 fontSize: 17,
                //                                                 letterSpacing:
                //                                                     0),
                //                                       ),
                //                                     ),
                //                                   ],
                //                                 ),
                //                                 Text(
                //                                   "Inclusive of All Taxes",
                //                                   style: GoogleFonts.dmSans(
                //                                     textStyle: const TextStyle(
                //                                         fontWeight:
                //                                             FontWeight.normal,
                //                                         color: Colors.black,
                //                                         fontSize: 13,
                //                                         letterSpacing: 0),
                //                                   ),
                //                                 ),
                //                                 Box(height: 10, width: 0),
                //                                 Row(
                //                                   children: [
                //                                     Container(
                //                                       height: 40,
                //                                       width: 100,
                //                                       child: Row(
                //                                         mainAxisAlignment:
                //                                             MainAxisAlignment
                //                                                 .spaceEvenly,
                //                                         children: [
                //                                           Icon(Icons.remove),
                //                                           Text("2"),
                //                                           Icon(Icons.add)
                //                                         ],
                //                                       ),
                //                                       decoration: BoxDecoration(
                //                                           border: Border.all(
                //                                               color: Colors
                //                                                   .black)),
                //                                     ),
                //                                     Box(height: 0, width: 10),
                //                                   
                //                                   ],
                //                                 ),
                //                                
                //                               ],
                //                             ),
                //                          
                //                           ],
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                        ))]),
                        EndBox()
                        ])
              )
              ));
  }
}
