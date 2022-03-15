// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:mr_and_mrs/AddCategory.dart';
// import 'package:mr_and_mrs/Users.dart';
// import 'package:mr_and_mrs/About/about.dart';
// import 'package:mr_and_mrs/addwood.dart';
// import 'package:mr_and_mrs/constants.dart';
// import 'package:mr_and_mrs/uploadData.dart';


// class Admin extends StatefulWidget {
//   @override
//   _AdminState createState() => _AdminState();
// }

// class _AdminState extends State<Admin> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//               child: Container(
// decoration: BoxDecoration(
//           color: Colors.blueGrey[100],
//    image: DecorationImage(
//               image: new NetworkImage(
//                   "https://i.ibb.co/3fT5Zb2/Modern-living-room-interior-with-sofa-and-green-plants-lamp-table-on-dark-wall-background-3d-renderi.jpg"),
//               fit: BoxFit.cover)
// ),
// height: MediaQuery.of(context).size.height,
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
//                       child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 5,),
//                 Row
//                 (
//                   children: [
//                     SizedBox(width: 5,),
//                     IconButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15)
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
                 
//                   ],
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.only(left: 40, top: 40.0,right:40),
//                     child: _mainarea())
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }



//   Widget _mainarea() {
//     return Container(
//         decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(10)),
//         height: MediaQuery.of(context).size.height / 2,
//         width:  MediaQuery.of(context).size.width - 130,
//         child: MediaQuery.of(context).size.width > 800 ?
//         Row

//         (
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center, children: [
//     // Padding(
//     //   padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//     //   child: GestureDetector(
//     //     onTap: () {
//     //       Navigator.push(
//     //           context, MaterialPageRoute(builder: (c) => Homer()));
//     //     },
//     //     child: Container(
//     //       height: 40,
//     //       decoration: BoxDecoration(
//     //           color: kBackgroundColor,
//     //           borderRadius: BorderRadius.circular(10)),
//     //       child: Center(
//     //         child: Text(
//     //           "ITEMS",
//     //           style: GoogleFonts.josefinSans(
//     //             textStyle: TextStyle(
//     //                 fontWeight: FontWeight.bold,
//     //                 color: kCaptionColor,
//     //                 fontSize: 12,
//     //                 letterSpacing: 1),
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),

//     // Padding(
//     //   padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//     //   child: Container(
//     //     height: 40,
//     //     decoration: BoxDecoration(
//     //         color: kBackgroundColor,
//     //         borderRadius: BorderRadius.circular(10)),
//     //     child: Center(
//     //       child: Text(
//     //         "ORDERS",
//     //         style: GoogleFonts.josefinSans(
//     //           textStyle: TextStyle(
//     //               fontWeight: FontWeight.bold,
//     //               color: kCaptionColor,
//     //               fontSize: 12,
//     //               letterSpacing: 1),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),

//     Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//       child: GestureDetector(
//         onTap: (){
//             Navigator.push(
//               context, MaterialPageRoute(builder: (c) => addcategory()));
//         },
//                   child: Container(
//           height: 140,
//           width: 140,
//           decoration: BoxDecoration(
//               color: Colors.white38,
//               borderRadius: BorderRadius.circular(4)),
//           child: Center(
//             child: Text(
//               "ADD CATEGORY",
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color:Colors.black,
//                     fontSize: 12,
//                     letterSpacing: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//       child: GestureDetector(
//         onTap: (){
//             Navigator.push(
//               context, MaterialPageRoute(builder: (c) => addwood()));
//         },
//                   child: Container(
//           height: 140,
//           width: 140,
//           decoration: BoxDecoration(
//               color: Colors.white38,
//               borderRadius: BorderRadius.circular(4)),
//           child: Center(
//             child: Text(
//               "ADD WOODS",
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 12,
//                     letterSpacing: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),

//     Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//       child: GestureDetector(onTap: (){
//          Navigator.push(
//               context, MaterialPageRoute(builder: (c) => Uploader()));
//       },
//                   child: Container(
//           height:140,
//           width: 140,
//           decoration: BoxDecoration(
//               color: Colors.white38,
//               borderRadius: BorderRadius.circular(4)),
//           child: Center(
//             child: Text(
//               "UPLOAD ITEMS",
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black
//                     ,
//                     fontSize: 12,
//                     letterSpacing: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     // SizedBox(height: 100),
//     // Center(
//     //   child: GestureDetector(
//     //     onTap: () {
//     //       Navigator.pushReplacement(
//     //           context, MaterialPageRoute(builder: (context) => MRMain()));
//     //     },
//     //     child: Container(
//     //       decoration: BoxDecoration(
//     //           color: kBackgroundColor,
//     //           borderRadius: BorderRadius.circular(10)),
//     //       height: 45,
//     //       width: 150,
//     //       child: Center(
//     //         child: Text(
//     //           "GET INTO",
//     //           style: GoogleFonts.lato(
//     //             textStyle: TextStyle(
//     //                 fontWeight: FontWeight.bold,
//     //                 color: kCaptionColor,
//     //                 fontSize: 12,
//     //                 letterSpacing: 3),
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//         ]): Column
//         (mainAxisAlignment: MainAxisAlignment.center, children: [
//     // Padding(
//     //   padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//     //   child: GestureDetector(
//     //     onTap: () {
//     //       Navigator.push(
//     //           context, MaterialPageRoute(builder: (c) => Homer()));
//     //     },
//     //     child: Container(
//     //       height: 40,
//     //       decoration: BoxDecoration(
//     //           color: kBackgroundColor,
//     //           borderRadius: BorderRadius.circular(10)),
//     //       child: Center(
//     //         child: Text(
//     //           "ITEMS",
//     //           style: GoogleFonts.josefinSans(
//     //             textStyle: TextStyle(
//     //                 fontWeight: FontWeight.bold,
//     //                 color: kCaptionColor,
//     //                 fontSize: 12,
//     //                 letterSpacing: 1),
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),

//     // Padding(
//     //   padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//     //   child: Container(
//     //     height: 40,
//     //     decoration: BoxDecoration(
//     //         color: kBackgroundColor,
//     //         borderRadius: BorderRadius.circular(10)),
//     //     child: Center(
//     //       child: Text(
//     //         "ORDERS",
//     //         style: GoogleFonts.josefinSans(
//     //           textStyle: TextStyle(
//     //               fontWeight: FontWeight.bold,
//     //               color: kCaptionColor,
//     //               fontSize: 12,
//     //               letterSpacing: 1),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),

//     Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//       child: GestureDetector(
//         onTap: (){
//             Navigator.push(
//               context, MaterialPageRoute(builder: (c) => addcategory()));
//         },
//                   child: Container(
//           height: 140,
//           width: 140,
//           decoration: BoxDecoration(
//               color: Colors.white38,
//               borderRadius: BorderRadius.circular(4)),
//           child: Center(
//             child: Text(
//               "ADD CATEGORY",
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color:Colors.black,
//                     fontSize: 12,
//                     letterSpacing: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//       child: GestureDetector(
//         onTap: (){
//             Navigator.push(
//               context, MaterialPageRoute(builder: (c) => addwood()));
//         },
//                   child: Container(
//           height: 140,
//           width: 140,
//           decoration: BoxDecoration(
//               color: Colors.white38,
//               borderRadius: BorderRadius.circular(4)),
//           child: Center(
//             child: Text(
//               "ADD WOODS",
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 12,
//                     letterSpacing: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),

//     Padding(
//       padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//       child: GestureDetector(onTap: (){
//          Navigator.push(
//               context, MaterialPageRoute(builder: (c) => Uploader()));
//       },
//                   child: Container(
//           height:140,
//           width: 140,
//           decoration: BoxDecoration(
//               color: Colors.white38,
//               borderRadius: BorderRadius.circular(4)),
//           child: Center(
//             child: Text(
//               "UPLOAD ITEMS",
//               style: GoogleFonts.josefinSans(
//                 textStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black
//                     ,
//                     fontSize: 12,
//                     letterSpacing: 0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     // SizedBox(height: 100),
//     // Center(
//     //   child: GestureDetector(
//     //     onTap: () {
//     //       Navigator.pushReplacement(
//     //           context, MaterialPageRoute(builder: (context) => MRMain()));
//     //     },
//     //     child: Container(
//     //       decoration: BoxDecoration(
//     //           color: kBackgroundColor,
//     //           borderRadius: BorderRadius.circular(10)),
//     //       height: 45,
//     //       width: 150,
//     //       child: Center(
//     //         child: Text(
//     //           "GET INTO",
//     //           style: GoogleFonts.lato(
//     //             textStyle: TextStyle(
//     //                 fontWeight: FontWeight.bold,
//     //                 color: kCaptionColor,
//     //                 fontSize: 12,
//     //                 letterSpacing: 3),
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//         ])
//       );
//   }

//   Widget headermenu() {
//     return Row(children: [
//       // Column(
//       //   children: [
//       //     // Text("Home",
//       //     //     style: GoogleFonts.josefinSans(
//       //     //       textStyle: TextStyle(
//       //     //           fontWeight: FontWeight.bold,
//       //     //           color: kCaptionColor,
//       //     //           fontSize: 18,
//       //     //           letterSpacing: 0),
//       //     //     )),
//       //     SizedBox(height: 4),
//       //     Container(height: 1, width: 30, color: kPrimaryColor)
//       //   ],
//       // ),
//       SizedBox(width: 15),
//       Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => Users()));
//             },
//             child: Text("Users",
//                 style: GoogleFonts.josefinSans(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: kCaptionColor,
//                       fontSize: 18,
//                       letterSpacing: 0),
//                 )),
//           ),
//           SizedBox(height: 4),
//           Container(height: 1, width: 30, color: kPrimaryColor)
//         ],
//       ),
//       SizedBox(width: 15),
//       Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => Products()));
//             },
//             child: Text("Products",
//                 style: GoogleFonts.josefinSans(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: kCaptionColor,
//                       fontSize: 18,
//                       letterSpacing: 0),
//                 )),
//           ),
//           SizedBox(height: 4),
//           Container(height: 1, width: 30, color: kPrimaryColor)
//         ],
//       ),
//       SizedBox(width: 15),
//       Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => about()));
//             },
//             child: Text("About",
//                 style: GoogleFonts.josefinSans(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: kCaptionColor,
//                       fontSize: 18,
//                       letterSpacing: 0),
//                 )),
//           ),
//           SizedBox(height: 4),
//           Container(height: 1, width: 30, color: kPrimaryColor)
//         ],
//       ),
//       SizedBox(width: 15),
//     ]);
//   }

//   // Widget header() {
//   //   return Center(
//   //     child: Column(
//   //       children: [
//   //         Text("Admin Panel",
//   //             style: GoogleFonts.josefinSans(
//   //               textStyle: TextStyle(
//   //                   fontWeight: FontWeight.bold,
//   //                   color: kPrimaryColor,
//   //                   fontSize: 18,
//   //                   letterSpacing: 0),
//   //             )),
//   //         SizedBox(height: 9),
//   //         Container(height: 1, width: 40, color: kCaptionColor)
//   //         // Text("Design Wood Works",
//   //         //     style: GoogleFonts.josefinSans(
//   //         //       textStyle: TextStyle(
//   //         //           fontWeight: FontWeight.bold,
//   //         //           color: kCaptionColor,
//   //         //           fontSize: 10,
//   //         //           letterSpacing: 0),
//   //         //     )),
//   //       ],
//   //     ),
//   //   );
//   // }

//   Widget circleheader() {
//     return Container(
//       width: 500,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Column(
//             children: [
//               CircleAvatar(
//                 backgroundImage: NetworkImage("https://www.danthree.com/wp-content/uploads/2019/04/Modern-bed-with-upholstered-headboard.jpg"),
//                 backgroundColor: kCaptionColor,
//                 radius: 50,
//               ),
//               SizedBox(height: 10),
//               Text("Best Quality",
//                   style: GoogleFonts.josefinSans(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: kCaptionColor,
//                         fontSize: 12,
//                         letterSpacing: 0),
//                   )),
//             ],
//           ),
//           Container(height: 3, width: 50, color: kPrimaryColor),
//           Column(
//             children: [
//               CircleAvatar(
//                 backgroundImage: NetworkImage("https://img.archiexpo.com/images_ae/photo-g/145180-15905145.webp"),
               
//                 backgroundColor: kCaptionColor,
//                 radius: 50,
//               ),
//               SizedBox(height: 10),
//               Text("World Class",
//                   style: GoogleFonts.josefinSans(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: kCaptionColor,
//                         fontSize: 12,
//                         letterSpacing: 0),
//                   )),
//             ],
//           ),
//           Container(height: 3, width: 50, color: kPrimaryColor),
//           Column(
//             children: [
//               CircleAvatar(
//                   backgroundImage: NetworkImage("https://5.imimg.com/data5/AA/KU/MY-60630852/iron-modern-table-500x500.jpg"),
              
//                 backgroundColor: kCaptionColor,
//                 radius: 50,
//               ),
//               SizedBox(height: 10),
//               Text("Best Rate",
//                   style: GoogleFonts.josefinSans(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: kCaptionColor,
//                         fontSize: 12,
//                         letterSpacing: 0),
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // import 'dart:ui';

// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'HomeScreen.dart';

// // class MainScreen extends StatefulWidget {
// //   @override
// //   _MainScreenState createState() => _MainScreenState();
// // }

// // class _MainScreenState extends State<MainScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: BoxDecoration(
// //             color:kCaptionColor,
// //             image: DecorationImage(
// //                 image: new NetworkImage(
// //                     "https://images.unsplash.com/photo-1449247709967-d4461a6a6103?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mzh8fHxlbnwwfHx8&w=1000&q=80"),
// //                 fit: BoxFit.cover)),
// //         child: BackdropFilter(
// //           filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
// //           child: Container(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.only(top: 2.0),
// //                   child: Container(
// //                     child: Text(
// //                       "Mr & Mrs",
// //                       style: GoogleFonts.josefinSans(
// //                         textStyle: TextStyle(
// //                             fontWeight: FontWeight.bold,
// //                             color: Colors.black,
// //                             fontSize: 58,
// //                             letterSpacing: 0),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Text(
// //                   "Design Wood Works",
// //                   style: GoogleFonts.quicksand(
// //                     textStyle: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                         fontSize: 18,
// //                         letterSpacing: 0),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: Divider(
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.only(top: 10.0),
// //                   child: Container(
// //                     child: Text(
// //                       "ADMIN : R.M.SUBRAMANIAN",
// //                       style: GoogleFonts.quicksand(
// //                         textStyle: TextStyle(
// //                             fontWeight: FontWeight.bold,
// //                             color: Colors.black,
// //                             fontSize: 12,
// //                             letterSpacing: 1),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Text(
// //                   "1048 /1 , Thoothukudi - Madurai Main Road (NH 45 - B),"
// //                       .toUpperCase(),
// //                   style: GoogleFonts.quicksand(
// //                     textStyle: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                         fontSize: 12,
// //                         letterSpacing: 1),
// //                   ),
// //                 ),
// //                 Text(
// //                   "Mela Eral - 628 908.Ettayapuram Taluk,".toUpperCase(),
// //                   style: GoogleFonts.quicksand(
// //                     textStyle: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                         fontSize: 12,
// //                         letterSpacing: 1),
// //                   ),
// //                 ),
// //                 Text(
// //                   "Thoothukudi ,TamilNadu, India".toUpperCase(),
// //                   style: GoogleFonts.quicksand(
// //                     textStyle: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                         fontSize: 12,
// //                         letterSpacing: 1),
// //                   ),
// //                 ),
// //                 Text(
// //                   "GSTIN: 33ATIPS1405J1ZR",
// //                   style: GoogleFonts.quicksand(
// //                     textStyle: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                         fontSize: 14,
// //                         letterSpacing: 1),
// //                   ),
// //                 ),
// //                 SizedBox(height: 100),
// //                 Center(
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       Navigator.pushReplacement(context,
// //                           MaterialPageRoute(builder: (context) => MRMain()));
// //                     },
// //                     child: Container(
// //                       decoration: BoxDecoration(
// //                           color: Colors.black,
// //                           borderRadius: BorderRadius.circular(10)),
// //                       height: 45,
// //                       width: 150,
// //                       child: Center(
// //                         child: Text(
// //                           "GET INTO",
// //                           style: GoogleFonts.lato(
// //                             textStyle: TextStyle(
// //                                 fontWeight: FontWeight.bold,
// //                                 color:kCaptionColor,
// //                                 fontSize: 12,
// //                                 letterSpacing: 3),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),

// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
