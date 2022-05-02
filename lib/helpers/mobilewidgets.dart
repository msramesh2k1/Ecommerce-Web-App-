// ignore_for_file: prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/aboutus.dart';
import 'package:mrandmrs_ecom_webapp/Orders.dart';
import 'package:mrandmrs_ecom_webapp/users/views/Helper.dart';
import 'package:mrandmrs_ecom_webapp/users/views/Search.dart';
import 'package:mrandmrs_ecom_webapp/Widgets/Custom_Widgets.dart';
import 'package:mrandmrs_ecom_webapp/users/views/Stepper.dart';
import '../../constants.dart';
import 'package:searchfield/searchfield.dart';

import '../CartPage.dart';
import '../users/views/HomePage.dart';
import '../users/views/accountscree.dart';
import '../users/views/loginpage.dart';
import '../users/views/allitemspage.dart';

class TopMovileNotifyBlackBox extends StatelessWidget {
  const TopMovileNotifyBlackBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(204, 191, 171, 1),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Text(
            "Worldwide Delivery | Free shipping above Rs : 12000 in India",
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: 0.8),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileTitleWebBox extends StatelessWidget {
  const MobileTitleWebBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(230, 224, 215, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Box(height: 0, width: 15),
                // GestureDetector(
                //     onTap: () {
                //       showDialog(
                //         context: context,
                //         builder: (BuildContext context) {
                //           return Container(
                //             margin: EdgeInsets.fromLTRB(
                //                 10,
                //                 100,
                //                 MediaQuery.of(context).size.width - 200,
                //                 MediaQuery.of(context).size.width - 10),
                //             height: 100,
                //             width: 300,
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //               children: [
                //                 Text(
                //                   "Home",
                //                   style: GoogleFonts.dmSans(
                //                     textStyle: const TextStyle(
                //                         fontWeight: FontWeight.normal,
                //                         color: Colors.black45,
                //                         fontSize: 20,
                //                         letterSpacing: 0.8),
                //                   ),
                //                 ),
                //                 Container(
                //                   height: 1,
                //                   color: Colors.black,
                //                 ),
                //                 Text(
                //                   "Shop",
                //                   style: GoogleFonts.dmSans(
                //                     textStyle: const TextStyle(
                //                         fontWeight: FontWeight.normal,
                //                         color: Colors.black45,
                //                         fontSize: 20,
                //                         letterSpacing: 0.8),
                //                   ),
                //                 ),
                //                 Container(
                //                   height: 1,
                //                   color: Colors.black,
                //                 ),
                //                 Text(
                //                   "Permium",
                //                   style: GoogleFonts.dmSans(
                //                     textStyle: const TextStyle(
                //                         fontWeight: FontWeight.normal,
                //                         color: Colors.black45,
                //                         fontSize: 20,
                //                         letterSpacing: 0.8),
                //                   ),
                //                 ),
                //                 Container(
                //                   height: 1,
                //                   color: Colors.black,
                //                 ),
                //                 Text(
                //                   "Orders",
                //                   style: GoogleFonts.dmSans(
                //                     textStyle: const TextStyle(
                //                         fontWeight: FontWeight.normal,
                //                         color: Colors.black45,
                //                         fontSize: 20,
                //                         letterSpacing: 0.8),
                //                   ),
                //                 ),
                //                 Container(
                //                   height: 1,
                //                   color: Colors.black,
                //                 ),
                //                 Text(
                //                   "About Us",
                //                   style: GoogleFonts.dmSans(
                //                     textStyle: const TextStyle(
                //                         fontWeight: FontWeight.normal,
                //                         color: Colors.black45,
                //                         fontSize: 20,
                //                         letterSpacing: 0.8),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //             color: Color.fromRGBO(230, 224, 215, 1),
                //           );
                //         },
                //       );
                //     },
                //     child: Icon(EvaIcons.menu)),
                // Spacer(
                //   flex: 2,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Mr & Mrs",
                      style: GoogleFonts.novaSlim(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kBackgroundColor,
                            fontSize: 25,
                            letterSpacing: 0),
                      ),
                    ),
                    Text(
                      "Design Wood Works",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 11,
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          MRANDMRS.sharedprefs!.getString("uid") == null
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginScreen()))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => AccountScreen()));
                        },
                        child: Icon(EvaIcons.personOutline)),
                    const Box(height: 0, width: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Search()));
                        },
                        child: Icon(EvaIcons.searchOutline)),
                    const Box(height: 0, width: 10),
                    GestureDetector(
                        onTap: () {
                          MRANDMRS.sharedprefs!.getString("uid") == ""
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginScreen()))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => StepperCart()));
                        },
                        child: Icon(EvaIcons.shoppingBagOutline)),
                    const Box(height: 0, width: 5),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  child: Text(
                    "Home",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                Box(height: 0, width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AllItemsScreen()));
                  },
                  child: Text(
                    "Shop",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                Box(height: 0, width: 20),
                Text(
                  "Permium",
                  style: GoogleFonts.dmSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 0.8),
                  ),
                ),
                Box(height: 0, width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Orders()));
                  },
                  child: Text(
                    "Orders",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                Box(height: 0, width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => AboutUs()));
                  },
                  child: Text(
                    "About us",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileSizeWidget extends StatefulWidget {
  final int seconds;
  final double height;
  final double width;
  final String url;

  const MobileSizeWidget(
      {required this.seconds,
      required this.height,
      required this.width,
      required this.url});

  @override
  _MobileSizeWidgetState createState() => _MobileSizeWidgetState();
}

class _MobileSizeWidgetState extends State<MobileSizeWidget>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _sizeAnimation;

  bool reverse = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: widget.seconds))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController!.repeat(reverse: !reverse);
          reverse = !reverse;
        }
      });

    _sizeAnimation = Tween<double>(begin: widget.height, end: 615.0)
        .animate(_animationController!);
    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _sizeAnimation!,
      builder: (context, child) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FINE QUALITY | HAND MADE",
              style: GoogleFonts.dmSans(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 15,
                    letterSpacing: 2),
              ),
            ),
            Box(height: 20, width: 0),
            Text(
              "PERMIUM MODERN FURNITURE ITEMS",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 4),
              ),
            ),
            Box(height: 20, width: 0),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AllItemsScreen()));
              },
              child: Container(
                height: 45,
                width: 150,
                child: Center(
                  child: Text(
                    "SHOP ITEMS",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 14,
                          letterSpacing: 2),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(204, 191, 171, 1),
                    border:
                        Border.all(color: Color.fromRGBO(204, 191, 171, 1))),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.url), fit: BoxFit.cover)),
        width: _sizeAnimation!.value * 5,
        height: _sizeAnimation!.value,
      ),
    );
  }
}

class MobileEndBox extends StatelessWidget {
  const MobileEndBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(242, 242, 239, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Box(height: 20, width: 0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  height: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CONTACT US",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 2),
                        ),
                      ),
                      Box(height: 15, width: 0),
                      Text(
                        "Email : ",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Box(height: 5, width: 0),
                      Text(
                        "mransmrsdesignwoodworks@gmail.com",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Box(height: 25, width: 0),
                      Text(
                        "Whatsapp",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Box(height: 5, width: 0),
                      Text(
                        "+917010862331",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Box(height: 25, width: 0),
                      Text(
                        "Address",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Box(height: 5, width: 0),
                      Text(
                        "4/2/6A RSPR Nagar \nThoothukudi",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Spacer(),
                      Box(height: 10, width: 0),
                    ],
                  ),
                ),
                // Container(
                //   width: 400,
                //   height: 200,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "CONNECT WITH US",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.bold,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 2),
                //         ),
                //       ),
                //       Box(height: 15, width: 0),
                //       Text(
                //         "Subscribe to our newsletter and be among the first to hear about new arrivals, sale, events and special offers.",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.normal,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 0.4),
                //         ),
                //       ),
                //       Box(height: 12, width: 0),
                //       Container(
                //         height: 40,
                //         child: Row(
                //           children: [
                //             Text(
                //               "    Enter your E-mail Address",
                //               style: GoogleFonts.dmSans(
                //                 textStyle: const TextStyle(
                //                     fontWeight: FontWeight.normal,
                //                     color: Colors.black45,
                //                     fontSize: 14,
                //                     letterSpacing: 0.4),
                //               ),
                //             ),
                //           ],
                //         ),
                //         width: 300,
                //         decoration: BoxDecoration(
                //             border: Border.all(color: Colors.black)),
                //       ),
                //       Box(height: 10, width: 0),
                //       Container(
                //         height: 40,
                //         width: 200,
                //         child: Center(
                //           child: Text(
                //             "SUBSCRIBE",
                //             style: GoogleFonts.dmSans(
                //               textStyle: const TextStyle(
                //                   fontWeight: FontWeight.normal,
                //                   color: Colors.white,
                //                   fontSize: 14,
                //                   letterSpacing: 2),
                //             ),
                //           ),
                //         ),
                //         decoration: BoxDecoration(
                //             color: Color.fromRGBO(204, 191, 171, 1),
                //             border: Border.all(
                //                 color: Color.fromRGBO(204, 191, 171, 1))),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 140,
                //   height: 192,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "ASSISTANCE",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.bold,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 2),
                //         ),
                //       ),
                //       Box(height: 15, width: 0),
                      
                //       Text(
                //         "Privacy Policy",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.normal,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 0.4),
                //         ),
                //       ),
                //       Box(height: 8, width: 0),
                //       Text(
                //         "Shipping Policy",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.normal,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 0.4),
                //         ),
                //       ),
                      
                //       Box(height: 8, width: 0),
                //       Text(
                //         "Exchange policy",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.normal,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 0.4),
                //         ),
                //       ),
                //       Box(height: 40, width: 0),
                //       Text(
                //         "© Mr and Mrs",
                //         style: GoogleFonts.dmSans(
                //           textStyle: const TextStyle(
                //               fontWeight: FontWeight.normal,
                //               color: Colors.black,
                //               fontSize: 14,
                //               letterSpacing: 0.4),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
