import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mrandmrs_ecom_webapp/HomeScreenWidgets/HomeWidgets.dart';
import 'package:mrandmrs_ecom_webapp/helpers/mobilewidgets.dart';
import 'package:mrandmrs_ecom_webapp/helpers/responsive_widget.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Column(
          children: [
            TopMovileNotifyBlackBox(),
            TitleMobileBox(),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      child: Center(
                        child: Text(
                          "About us",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 0.8),
                          ),
                        ),
                      ),
                      height: 100,
                    ),
                    Container(
                      height: 500,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            "Mr and Mrs Design Wood Works is a fully integrated manufacturer unit. \nEstablished in 2022 out of a desire to bring a uniquely customer-oriented approach, we design durable, elegant furniture that excels at meeting all core requirements. Combined with a huge array of options, choices, price points, and scales, our customers can specify the best possible solution.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 0.8),
                            ),
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width - 100,
                      color: Colors.white,
                    )
                  ],
                ),
                color: Colors.brown[100],
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
        tab: Column(
          children: [
        
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      child: Center(
                        child: Text(
                          "About us",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 0.8),
                          ),
                        ),
                      ),
                      height: 150,
                    ),
                    Container(
                      height: 300,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            "Mr and Mrs Design Wood Works is a fully integrated manufacturer unit. \nEstablished in 2022 out of a desire to bring a uniquely customer-oriented approach, we design durable, elegant furniture that excels at meeting all core requirements. Combined with a huge array of options, choices, price points, and scales, our customers can specify the best possible solution.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 0.8),
                            ),
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width - 200,
                      color: Colors.white,
                    )
                  ],
                ),
                color: Colors.brown[100],
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
        desktop: Column(
          children: [
      
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      child: Center(
                        child: Text(
                          "About us",
                          style: GoogleFonts.dmSans(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 0.8),
                          ),
                        ),
                      ),
                      height: 150,
                    ),
                    Container(
                      height: 300,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            "Mr and Mrs Design Wood Works is a fully integrated manufacturer unit. \nEstablished in 2022 out of a desire to bring a uniquely customer-oriented approach, we design durable, elegant furniture that excels at meeting all core requirements. Combined with a huge array of options, choices, price points, and scales, our customers can specify the best possible solution.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 0.8),
                            ),
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width - 200,
                      color: Colors.white,
                    )
                  ],
                ),
                color: Colors.brown[100],
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
      ),
    );
  }
}
