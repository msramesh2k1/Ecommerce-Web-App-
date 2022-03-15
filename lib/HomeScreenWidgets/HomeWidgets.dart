import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:mrandmrs_ecom_webapp/Admin.dart';
import 'package:mrandmrs_ecom_webapp/CartPage.dart';
import 'package:mrandmrs_ecom_webapp/Helper.dart';
import 'package:mrandmrs_ecom_webapp/HomePage.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/accountscree.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/loginpage.dart';
import 'package:mrandmrs_ecom_webapp/allitemspage.dart';

import '../Widgets/Custom_Widgets.dart';
import '../constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class TopNotifyBlackBox extends StatelessWidget {
  const TopNotifyBlackBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color.fromRGBO(204, 191, 171, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              // Use the EvaIcons class for the IconData
              icon: Icon(EvaIcons.shoppingCartOutline),
              onPressed: () {
                print("Eva Icon heart Pressed");
              }),
          const Box(height: 0, width: 10),
          Text(
            "Worldwide Delivery | Free shipping above Rs : 12000 in India",
            style: GoogleFonts.dmSans(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}

class TopMobileNotifyBlackBox extends StatelessWidget {
  const TopMobileNotifyBlackBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Box(height: 0, width: 10),
          Row(
            children: [
              const Icon(
                Icons.delivery_dining_outlined,
                color: Colors.white,
              ),
              const Box(height: 0, width: 10),
              Text(
                "Free Shipping",
                style: GoogleFonts.dmSans(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 0.5),
                ),
              ),
              const Box(height: 0, width: 10),
              const VerticalDivider(
                color: Colors.white,
                thickness: 0.5,
                width: 40,
                indent: 10,
                endIndent: 10,
              ),
              const Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              const Box(height: 0, width: 20),
              Text(
                "EMI Options",
                style: GoogleFonts.dmSans(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 0.5),
                ),
              ),
            ],
          ),
          const Box(height: 0, width: 10),
        ],
      ),
    );
  }
}

class TitleMobileBox extends StatelessWidget {
  const TitleMobileBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            Row(
              children: [
                Column(
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
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: const Center(
                      child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 20,
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                ),
                Box(height: 0, width: 10)
              ],
            ),
          ],
        ),
        Box(height: 10, width: 0),
        Container(
          child: Center(
            child: Row(
              children: [
                Box(height: 0, width: 10),
                Text(
                  "What are you looking for ?",
                  style: GoogleFonts.dmSans(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 0),
                  ),
                ),
                Spacer(),
                Icon(Icons.search),
                Box(height: 0, width: 10),
              ],
            ),
          ),
          height: 50,
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
        )
      ],
    );
  }
}

class EndBox extends StatelessWidget {
  const EndBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(242, 242, 239, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Box(height: 100, width: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 500,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CONTACT US",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
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
                    Text(
                      "© Mr and Mrs",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 10, width: 0),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CONNECT WITH US",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 2),
                      ),
                    ),
                    Box(height: 15, width: 0),
                    Text(
                      "Subscribe to our newsletter and be among the first to hear about new arrivals, sale, events and special offers.",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 12, width: 0),
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          Text(
                            "    Enter your E-mail Address",
                            style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black45,
                                  fontSize: 14,
                                  letterSpacing: 0.4),
                            ),
                          ),
                        ],
                      ),
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                    ),
                    Box(height: 10, width: 0),
                    Container(
                      height: 40,
                      width: 200,
                      child: Center(
                        child: Text(
                          "SUBSCRIBE",
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
                          border: Border.all(
                              color: Color.fromRGBO(204, 191, 171, 1))),
                    ),
                  ],
                ),
              ),
              Container(
                width: 140,
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ASSISTANCE",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 2),
                      ),
                    ),
                    Box(height: 15, width: 0),
                    Text(
                      "FAQ's",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 8, width: 0),
                    Text(
                      "Privacy Policy",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 8, width: 0),
                    Text(
                      "Shipping Policy",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 8, width: 0),
                    Text(
                      "Track your order",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 8, width: 0),
                    Text(
                      "Exchange policy",
                      style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 0.4),
                      ),
                    ),
                    Box(height: 8, width: 0),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleWebBox extends StatelessWidget {
  const TitleWebBox({
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Box(height: 0, width: 40),
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    const Box(height: 0, width: 20),
                    Icon(EvaIcons.searchOutline),
                    const Box(height: 0, width: 20),
                    GestureDetector(
                        onTap: () {
                          MRANDMRS.sharedprefs!.getString("uid") == null
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginScreen()))
                              : Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => cart()));
                        },
                        child: Icon(EvaIcons.shoppingBagOutline)),
                    const Box(height: 0, width: 40),
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
                  child: HoverWidget(
                    hoverChild: Column(
                      children: [
                        Text(
                          "Home",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45,
                                fontSize: 14,
                                letterSpacing: 0.8),
                          ),
                        ),
                        Box(height: 4, width: 0),
                        AnimatedContainer(
                          duration: Duration(seconds: 3),
                          height: 1.5,
                          color: Colors.black,
                          width: 50,
                        )
                      ],
                    ),
                    onHover: (PointerEnterEvent event) {
                      print("HELLO");
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
                ),
                Box(height: 0, width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AllItemsScreen()));
                  },
                  child: HoverWidget(
                    hoverChild: Column(
                      children: [
                        Text(
                          "Shop",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45,
                                fontSize: 14,
                                letterSpacing: 0.8),
                          ),
                        ),
                        Box(height: 4, width: 0),
                        AnimatedContainer(
                          duration: Duration(seconds: 3),
                          height: 1.5,
                          color: Colors.black,
                          width: 50,
                        )
                      ],
                    ),
                    onHover: (PointerEnterEvent event) {},
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
                ),
                Box(height: 0, width: 30),
                HoverWidget(
                  hoverChild: Column(
                    children: [
                      Text(
                        "Premium",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                              fontSize: 14,
                              letterSpacing: 0.8),
                        ),
                      ),
                      Box(height: 4, width: 0),
                      AnimatedContainer(
                        duration: Duration(seconds: 3),
                        height: 1.5,
                        color: Colors.black,
                        width: 50,
                      )
                    ],
                  ),
                  onHover: (PointerEnterEvent event) {
                    print("HELLO");
                  },
                  child: Text(
                    "Permium",
                    style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
                Box(height: 0, width: 30),
                HoverWidget(
                  hoverChild: Column(
                    children: [
                      Text(
                        "Orders",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                              fontSize: 14,
                              letterSpacing: 0.8),
                        ),
                      ),
                      Box(height: 4, width: 0),
                      AnimatedContainer(
                        duration: Duration(seconds: 3),
                        height: 1.5,
                        color: Colors.black,
                        width: 50,
                      )
                    ],
                  ),
                  onHover: (PointerEnterEvent event) {
                    print("HELLO");
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
                Box(height: 0, width: 30),
                HoverWidget(
                  hoverChild: Column(
                    children: [
                      Text(
                        "About us",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                              fontSize: 14,
                              letterSpacing: 0.8),
                        ),
                      ),
                      Box(height: 4, width: 0),
                      AnimatedContainer(
                        duration: Duration(seconds: 3),
                        height: 1.5,
                        color: Colors.black,
                        width: 50,
                      )
                    ],
                  ),
                  onHover: (PointerEnterEvent event) {
                    print("HELLO");
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

class TitleAdminWebBox extends StatelessWidget {
  const TitleAdminWebBox({
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Box(height: 0, width: 40),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Box(height: 0, width: 20),
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
                    const Box(height: 0, width: 20),
                    GestureDetector(
                        onTap: () {
                          MRANDMRS.sharedprefs!.getString("uid") == null
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginScreen()))
                              : Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => cart()));
                        },
                        child: Icon(EvaIcons.shoppingBagOutline)),
                    const Box(height: 0, width: 40),
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
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Admin()));
                  },
                  child: HoverWidget(
                    hoverChild: Column(
                      children: [
                        Text(
                          "Add Items",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45,
                                fontSize: 14,
                                letterSpacing: 0.8),
                          ),
                        ),
                        Box(height: 4, width: 0),
                        AnimatedContainer(
                          duration: Duration(seconds: 3),
                          height: 1.5,
                          color: Colors.black,
                          width: 50,
                        )
                      ],
                    ),
                    onHover: (PointerEnterEvent event) {
                      print("HELLO");
                    },
                    child: Text(
                      "Add Items",
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
                Box(height: 0, width: 30),
                HoverWidget(
                  hoverChild: Column(
                    children: [
                      Text(
                        "Orders",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                              fontSize: 14,
                              letterSpacing: 0.8),
                        ),
                      ),
                      Box(height: 4, width: 0),
                      AnimatedContainer(
                        duration: Duration(seconds: 3),
                        height: 1.5,
                        color: Colors.black,
                        width: 50,
                      )
                    ],
                  ),
                  onHover: (PointerEnterEvent event) {
                    print("HELLO");
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
                Box(height: 0, width: 30),
                HoverWidget(
                  hoverChild: Column(
                    children: [
                      Text(
                        "Users",
                        style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black45,
                              fontSize: 14,
                              letterSpacing: 0.8),
                        ),
                      ),
                      Box(height: 4, width: 0),
                      AnimatedContainer(
                        duration: Duration(seconds: 3),
                        height: 1.5,
                        color: Colors.black,
                        width: 50,
                      )
                    ],
                  ),
                  onHover: (PointerEnterEvent event) {
                    print("HELLO");
                  },
                  child: Text(
                    "Users",
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

class BannerSlide extends StatelessWidget {
  const BannerSlide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Image.network(
        "https://images.pexels.com/photos/1669799/pexels-photo-1669799.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        fit: BoxFit.cover,
      ),
    );
  }
}
