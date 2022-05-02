// import 'dart:io' as io;
// import 'dart:ui';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:universal_html/html.dart';
// import 'package:firebase/firebase.dart' as fb;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class addwood extends StatefulWidget {
//   @override
//   _addwoodState createState() => _addwoodState();
// }

// class _addwoodState extends State<addwood> {
//   // bool uploaded = false;
//   String? imgurl;
//   // io.File img;
// // void uploadFile({@required Function(File file)onSelected}){
// //   InputElement uploadInput = FileUploadInputElement()..accept = 'image/*';
// //   uploadInput.click();
// //   uploadInput.onChange.listen((event) {
// //     final file = uploadInput.files.first;
// //     final reader = FileReader();
// //     reader.readAsDataUrl(file);
// //     reader.onLoadEnd.listen((event) {
// //    onSelected(file);
// //     });
// //   })
// //   ;
// // }
//   void uploadtoStorage() {
//     var uploadInput = FileUploadInputElement()..accept = 'image/*';

//     FirebaseStorage fsv = FirebaseStorage.instance;

//     uploadInput.click();
//     uploadInput.onChange.listen((event) {
//       final file = uploadInput.files?.first;
//       final reader = FileReader();
//       reader.readAsDataUrl(file!);

//       reader.onLoadEnd.listen((event) async {
//         var snapshot = await fsv
//             .ref()
//             .child(DateTime.now().toIso8601String())
//             .putBlob(file);
//         String downloadUrl = await snapshot.ref.getDownloadURL();
//         setState(() {
//           imgurl = downloadUrl;
//         });
//       });
//     });
// //   uploadFile(onSelected: (file){

// // fb.storage().refFromURL("gs://mrandmrs-33fa0.appspot.com")
// // .child('image3').put(file);
// //   });
//   }

//   TextEditingController categorycontroller = new TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(height: 8),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0, left: 50, right: 50),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Color.fromRGBO(230, 224, 215, 1),
//                     borderRadius: BorderRadius.circular(4)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: 45,
//                               width: MediaQuery.of(context).size.width - 132,
//                               decoration: BoxDecoration(
//                                   color: Colors.grey[100],
//                                   borderRadius: BorderRadius.circular(4)),
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 8.0),
//                                 child: TextField(
//                                   textCapitalization:
//                                       TextCapitalization.sentences,
//                                   style: TextStyle(color: Colors.black),
//                                   controller: categorycontroller,
//                                   keyboardType: TextInputType.name,
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     labelText: "WOOD NAME",
//                                     labelStyle: TextStyle(
//                                         color: Colors.black38,
//                                         fontSize: 12,
//                                         letterSpacing: 2),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: imgurl == null
//                                 ? GestureDetector(
//                                     onTap: () {
//                                       uploadtoStorage();
//                                     },
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(0),
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(4),
//                                             color: Colors.grey[100]),
//                                         height: 150,
//                                         width:
//                                             MediaQuery.of(context).size.width -
//                                                 132,
//                                         child: Center(
//                                           child: Text(
//                                             "Choose Image",
//                                             style: GoogleFonts.josefinSans(
//                                               textStyle: TextStyle(
//                                                   fontWeight: FontWeight.normal,
//                                                   color: Colors.black,
//                                                   fontSize: 14,
//                                                   letterSpacing: 0),
//                                             ),
//                                           ),
//                                         ),
//                                         //  child: Placeholder(
//                                         //     fallbackWidth:200,
//                                         //     fallbackHeight:200
//                                         //   ),
//                                       ),
//                                     ),
//                                   )
//                                 : Row(
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
//                                             height: 150,
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width -
//                                                 150,
//                                             child: Image.network(
//                                               imgurl.toString(),
//                                               fit: BoxFit.contain,
//                                             )),
//                                       ),
//                                     ],
//                                   ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           GestureDetector(
//                               onTap: () {
//                                 FirebaseFirestore.instance
//                                     .collection("Woods")
//                                     .doc(categorycontroller.text
//                                         .toUpperCase()
//                                         .toString())
//                                     .set({
//                                       "image": imgurl,
//                                       "name": categorycontroller.text
//                                           .toUpperCase()
//                                           .toString(),
//                                     })
//                                     .whenComplete(() => EasyLoading.showToast(
//                                         "Wood Added Successfully"))
//                                     .then((value) {
//                                       Navigator.pop(context);
//                                     });
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   width: 100,
//                                   child: Center(
//                                     child: Text(
//                                       "Upload",
//                                       style: GoogleFonts.josefinSans(
//                                         textStyle: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             letterSpacing: 0),
//                                       ),
//                                     ),
//                                   ),
//                                   height: 40,
//                                   decoration: BoxDecoration(
//                                       color: Colors.black,
//                                       borderRadius: BorderRadius.circular(4)),
//                                 ),
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
