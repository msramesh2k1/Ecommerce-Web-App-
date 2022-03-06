import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/Helper.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/Responsive_widget.dart';
import 'package:mrandmrs_ecom_webapp/animatedimage.dart';
import 'package:mrandmrs_ecom_webapp/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'HomeScreenWidgets/HomeWidgets.dart';
import 'Widgets/Custom_Widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = 300;
    return Scaffold(
        body: SafeArea(
            child: ResponsiveWidget(
                mobile: SingleChildScrollView(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        TopMobileNotifyBlackBox(),
                        Box(height: 10, width: 0),
                        TitleMobileBox(),
                        Box(height: 15, width: 0),
                        BannerSlide(),
                        Container(
                          color: Colors.grey[200],
                          height: 100,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Landmark Rewards",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18,
                                          letterSpacing: 0),
                                    ),
                                  ),
                                  Text(
                                    "Earn and Reedmen Landmark reward ",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontSize: 18,
                                          letterSpacing: 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Box(height: 20, width: 0),
                        Center(
                          child: Text(
                            "Shop By Category",
                            style: GoogleFonts.dmSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                        Box(height: 30, width: 0),
                        Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection("category")
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  return ResponsiveGridRow(children: [
                                    ResponsiveGridCol(
                                      xs: 3,
                                      lg: 3,
                                      xl: 4,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[0]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[0]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveGridCol(
                                      xs: 3,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[1]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[1]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveGridCol(
                                      xs: 3,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[1]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[1]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveGridCol(
                                      xs: 3,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[0]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[0]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]);
                                })),
                        Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection("category")
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  return ResponsiveGridRow(children: [
                                    ResponsiveGridCol(
                                      xs: 3,
                                      lg: 3,
                                      xl: 4,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[0]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[0]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveGridCol(
                                      xs: 3,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[1]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[1]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveGridCol(
                                      xs: 3,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[1]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[1]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveGridCol(
                                      xs: 3,
                                      md: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            GridviewImage(
                                                url: snapshot.data!.docs[0]
                                                    ['image']),
                                            GridViewText(
                                              name: snapshot.data!.docs[0]
                                                  ['name'],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]);
                                })),
                        ResponsiveGridRow(children: [
                          ResponsiveGridCol(
                            xs: 12,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    child: GridviewImage(
                                        url:
                                            "https://images.pexels.com/photos/6707628/pexels-photo-6707628.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 12,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    child: GridviewImage(
                                        url:
                                            "https://images.pexels.com/photos/2440471/pexels-photo-2440471.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                tab: Container(),
                desktop: SingleChildScrollView(
                    child: SizedBox(
                        child: Column(children: [
                  TopNotifyBlackBox(),
                  TitleWebBox(),
                  SizeWidget(
                    seconds: 1,
                    height: 320,
                    width: width,
                    url: "https://i.ibb.co/RYSwJQn/Untitled-1920-900-px.png",
                  ),
                  Box(height: 30, width: 0),
                  Center(
                    child: Text(
                      "LATEST ITEMS",
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 4),
                      ),
                    ),
                  ),
                  Box(height: 30, width: 0),
                  Container(
                    height: 880,
                    width: MediaQuery.of(context).size.width,
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection("category")
                          .snapshots(),
                      builder: (context, snapshots) {
                        return GridView.builder(
                            itemCount: 6,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Image(
                                          image: NetworkImage(
                                            snapshots.data!.docs[index]
                                                ['image'],
                                          ),
                                          fit: BoxFit.cover,
                                          width: 300,
                                          height: 300,
                                        ),
                                      ),
                                      Box(height: 0, width: 0),
                                      Text(
                                        snapshots.data!.docs[index]['name'],
                                        style: GoogleFonts.dmSans(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontSize: 14,
                                              letterSpacing: 4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  height: 400,
                                  color: Colors.white,
                                ),
                              );
                            });
                      },
                    ),
                  ),

                  // Container(
                  //     height: 700,
                  //     width: MediaQuery.of(context).size.width,
                  //     color: Colors.red,
                  //     child: StreamBuilder<QuerySnapshot>(
                  //         stream: FirebaseFirestore.instance
                  //             .collection("category")
                  //             .snapshots(),
                  //         builder: (context, snapshot) {
                  //           return GridView.builder(
                  //               itemCount: 3,
                  //               gridDelegate:
                  //                   SliverGridDelegateWithMaxCrossAxisExtent(
                  //                       maxCrossAxisExtent: 3),
                  //               itemBuilder: (context, index) {
                  //                 return Container(
                  //                   height: 500,
                  //                   width: 400,
                  //                   color: Colors.red,
                  //                 );
                  //               });
                  //         })),

                  Center(
                    child: Text(
                      "SHOP BY CATEGORY",
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 18,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  Box(height: 40, width: 0),

                  Container(
                      height: 1600,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection("category")
                              .limit(4)
                              .snapshots(),
                          builder: (context, snapshot) {
                            return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: ((context, index) {
                                  return Container(
                                    height: 400,
                                    child: index % 2 == 0
                                        ? Row(children: [
                                            Container(
                                              height: 400,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Explore high quality " +
                                                          snapshot.data!
                                                                  .docs[index]
                                                              ['name'] +
                                                          " Items",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.dmSans(
                                                        textStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            letterSpacing: 0.5),
                                                      ),
                                                    ),
                                                    Box(height: 20, width: 0),
                                                    Container(
                                                      height: 40,
                                                      width: 200,
                                                      color: Colors.black,
                                                      child: Center(
                                                        child: Text(
                                                          "EXPLORE NOW",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .dmSans(
                                                            textStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                letterSpacing:
                                                                    0.5),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                                child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        snapshot.data!
                                                                .docs[index]
                                                            ['image'],
                                                      ),
                                                      fit: BoxFit.cover)),
                                              height: 400,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                            ))
                                          ])
                                        : Row(children: [
                                            Container(
                                              height: 400,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        snapshot.data!
                                                                .docs[index]
                                                            ['image'],
                                                      ),
                                                      fit: BoxFit.cover)),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                            ),
                                            Expanded(
                                                child: Container(
                                                    height: 400,
                                                    color: Colors.white,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            2,
                                                    child: Center(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                          Text(
                                                            "Explore high quality " +
                                                                snapshot.data!
                                                                            .docs[
                                                                        index]
                                                                    ['name'] +
                                                                " Items",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .dmSans(
                                                              textStyle: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.5),
                                                            ),
                                                          ),
                                                          Box(
                                                              height: 20,
                                                              width: 0),
                                                          Container(
                                                              height: 40,
                                                              width: 200,
                                                              color:
                                                                  Colors.black,
                                                              child: Center(
                                                                child: Text(
                                                                  "EXPLORE NOW",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      GoogleFonts
                                                                          .dmSans(
                                                                    textStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15,
                                                                        letterSpacing:
                                                                            0.5),
                                                                  ),
                                                                ),
                                                              ))
                                                        ]))))
                                          ]),
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.black,
                                  );
                                }));
                          })),
                  Box(height: 20, width: 0),
                  Container(
                    height: 40,
                    width: 200,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "EXPLORE ALL",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 0.5),
                        ),
                      ),
                    ),
                  ),
                  Box(height: 60, width: 0),

                  Text(
                    "TRENDING PRODUCT OF THE WEEK",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 18,
                          letterSpacing: 2),
                    ),
                  ),
                  Box(height: 30, width: 0),
                  Container(
                      height: 500,
                      child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection("category")
                              .limit(1)
                              .snapshots(),
                          builder: (context, snapshot) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(snapshot.data!.docs[0]['image']),
                                Box(height: 0, width: 40),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Mr and Mrs Design Wood Works",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 20,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                    Box(height: 20, width: 0),
                                    Text(
                                      snapshot.data!.docs[0]['name'],
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 20,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                    Box(height: 20, width: 0),
                                    Text(
                                      snapshot.data!.docs[0]['detailedname']
                                          .toString()
                                          .toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 19,
                                            letterSpacing: 2),
                                      ),
                                    ),
                                    Box(height: 20, width: 0),
                                    Text(
                                      "RS " + snapshot.data!.docs[0]['price'],
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 20,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                    Box(height: 20, width: 0),
                                    Container(
                                      height: 40,
                                      width: 200,
                                      child: Center(
                                        child: Text(
                                          "VIEW PRODUCT",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.dmSans(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                                fontSize: 15,
                                                letterSpacing: 0.5),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          border:
                                              Border.all(color: Colors.black)),
                                    )
                                  ],
                                )
                              ],
                            );
                          })),
                  Box(height: 60, width: 0),
                  ResponsiveGridRow(children: [
                    ResponsiveGridCol(
                      xs: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              child: GridviewImage(
                                  url:
                                      "https://images.pexels.com/photos/6707628/pexels-photo-6707628.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              child: GridviewImage(
                                  url:
                                      "https://images.pexels.com/photos/2440471/pexels-photo-2440471.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Box(height: 20, width: 0),

                  Box(height: 30, width: 0),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromRGBO(242, 242, 239, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Brands that believe our Furnitures",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 0.5),
                          ),
                        ),
                        Box(height: 20, width: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://i.ibb.co/NV97bn3/925721471s.png",
                              height: 150,
                            ),
                            Box(height: 0, width: 40),
                            Image.network(
                              "https://i.ibb.co/mhFNLKD/011020125946-Casa-logo.jpg",
                              height: 150,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/128/411/411763.png",
                                    height: 100,
                                  ),
                                ),
                                Box(height: 20, width: 0),
                                Text(
                                  "Free Shipping \nwithin india",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                height: 100, color: Colors.black, width: 2),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/913/913241.png",
                                      height: 60,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Box(height: 20, width: 0),
                                Text(
                                  "Packaged with love\nafter proper sanitazation",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                height: 100, color: Colors.black, width: 2),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/1332/1332646.png",
                                      height: 60,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Box(height: 20, width: 0),
                                Text(
                                  "Pay with\nsecure payment",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                height: 100, color: Colors.black, width: 2),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/5881/5881616.png",
                                      height: 60,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Box(height: 20, width: 0),
                                Text(
                                  "Superior\nCraftmanship",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 12,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "NEW ADDITIONS TO MENU , SUBSCRIBE TO OUR NEWS LETTER",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 2),
                          ),
                        ),
                        Box(height: 30, width: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 350,
                              child: Center(
                                child: Text(
                                  "Enter your E-mail Address",
                                  style: GoogleFonts.dmSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 14,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                            ),
                            Box(height: 0, width: 10),
                            Container(
                              height: 45,
                              width: 100,
                              child: Center(
                                child: Text(
                                  "SUBSCRIBE",
                                  style: GoogleFonts.dmSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 14,
                                        letterSpacing: 1),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/5089175/pexels-photo-5089175.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  EndBox()
                ]))))));
  }
}

class GridviewImage extends StatelessWidget {
  final String? url;
  const GridviewImage({
    Key? key,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url.toString(),
      fit: BoxFit.cover,
    );
  }
}

class GridViewText extends StatelessWidget {
  final String? name;
  const GridViewText({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toString(),
      style: GoogleFonts.dmSans(
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
            letterSpacing: 0.5),
      ),
    );
  }
}

class GridViewSubText extends StatelessWidget {
  final String? name;
  const GridViewSubText({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toString(),
      style: GoogleFonts.dmSans(
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
            letterSpacing: 0.5),
      ),
    );
  }
}
