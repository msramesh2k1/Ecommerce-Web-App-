// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class CustomGridView extends StatelessWidget {
//   CustomGridView({required this.columnRatio}) : super();

  
//   final int columnRatio;

//   @override
//   Widget build(BuildContext context) {
//     Random random = new Random();

//     return StaggeredGridView.countBuilder(
//       itemCount: 8,
//       primary: false,
//       crossAxisCount: 12,
//       itemBuilder: (context, index) => Container(
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(0),
//             boxShadow: const [
//               BoxShadow(
//                   color: Colors.black26, offset: Offset(0, 2), blurRadius: 6)
//             ]),
//         height: 180,
//         margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
//         child: Container(
//             color: Colors.white,
//             child: Column(
//               children: [
//                 Text(
//                   "Bed",
//                   style: GoogleFonts.dmSans(
//                     textStyle: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 18,
//                         letterSpacing: 0.5),
//                   ),
//                 ),
//               ],
//             )),
//       ),
//       staggeredTileBuilder: (index) => StaggeredTile.fit(columnRatio),
//     );
//   }
// }
