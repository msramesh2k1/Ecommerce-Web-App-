// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'HomeScreenWidgets/HomeWidgets.dart';
// import 'Widgets/Custom_Widgets.dart';

// class DetailProductScreen extends StatefulWidget {
//   const DetailProductScreen({Key? key}) : super(key: key);

//   @override
//   State<DetailProductScreen> createState() => _DetailProductScreenState();
// }

// class _DetailProductScreenState extends State<DetailProductScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               TopNotifyBlackBox(),
//               TitleWebBox(),
//               Box(height: 40, width: 0),
//               Text(
//                 "PRODUCT",
//                 style: GoogleFonts.dmSans(
//                   textStyle: const TextStyle(
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                       fontSize: 14,
//                       letterSpacing: 2),
//                 ),
//               ),
//               Box(height: 40, width: 0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Box(height: 0, width: 30),
//                   Column(
//                     children: [
//                       Text(
//                         "Alba Warren King-Size Bed with Hydraulic Storage",
//                         style: GoogleFonts.dmSans(
//                           textStyle: const TextStyle(
//                               fontWeight: FontWeight.normal,
//                               color: Colors.black,
//                               fontSize: 16,
//                               letterSpacing: 0),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Container(
//                         height: 400,
//                         width: 500,
//                         color: Colors.black38,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 100,
//                         width: 500,
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 80,
//                               width: 80,
//                               color: Colors.black38,
//                             ),
//                             Box(height: 0, width: 10),
//                             Container(
//                               height: 80,
//                               width: 80,
//                               color: Colors.black38,
//                             ),
//                             Box(height: 0, width: 10),
//                             Container(
//                               height: 80,
//                               width: 80,
//                               color: Colors.black38,
//                             ),
//                             Box(height: 0, width: 10),
//                             Container(
//                               height: 80,
//                               width: 80,
//                               color: Colors.black38,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     width: 100,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "15,000 INR",
//                             style: GoogleFonts.dmSans(
//                               textStyle: const TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: Colors.black54,
//                                   decoration: TextDecoration.lineThrough,
//                                   fontSize: 13,
//                                   letterSpacing: 0),
//                             ),
//                           ),
//                           Box(height: 0, width: 10),
//                           Text(
//                             "12,000 INR",
//                             style: GoogleFonts.dmSans(
//                               textStyle: const TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                   fontSize: 17,
//                                   letterSpacing: 0),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         "Inclusive of All Taxes",
//                         style: GoogleFonts.dmSans(
//                           textStyle: const TextStyle(
//                               fontWeight: FontWeight.normal,
//                               color: Colors.black,
//                               fontSize: 13,
//                               letterSpacing: 0),
//                         ),
//                       ),
//                       Box(height: 10, width: 0),
//                       Row(
//                         children: [
//                           Container(
//                             height: 40,
//                             width: 100,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Icon(Icons.remove),
//                                 Text("2"),
//                                 Icon(Icons.add)
//                               ],
//                             ),
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.black)),
//                           ),
//                           Box(height: 0, width: 10),
//                           Container(
//                             height: 40,
//                             width: 200,
//                             child: Center(
//                               child: Text(
//                                 "ADD TO CART",
//                                 style: GoogleFonts.dmSans(
//                                   textStyle: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black,
//                                       fontSize: 13,
//                                       letterSpacing: 0),
//                                 ),
//                               ),
//                             ),
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.black)),
//                           ),
//                         ],
//                       ),
//                       Box(height: 10, width: 0),
//                       Text(
//                         "Overview",
//                         style: GoogleFonts.dmSans(
//                           textStyle: const TextStyle(
//                               fontWeight: FontWeight.normal,
//                               color: Colors.black,
//                               fontSize: 13,
//                               letterSpacing: 0),
//                         ),
//                       ),

//                       Box(height: , width: width)
//                     ],
//                   ),
//                   Box(height: 0, width: 30),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
