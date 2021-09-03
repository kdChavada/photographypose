import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CategoryPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Image.asset(
                "assets/images/cody-scott-milewski-rUngkoF36zM-unsplash.jpg",
                height: h * 0.45,
                fit: BoxFit.cover,
                width: w,
              ),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Center(
            child: Text(
              "All Photography Pose",
              style: GoogleFonts.pottaOne(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Center(
              child: Text(
                // "Are you looking for the best photography pose & style? then don't go anywhere, You can get all latest trending photo poses & photo style from this app. Just install the app and get almost all position of trending photography style.",
                "Are you looking for the best photography pose & style? then don't go anywhere, You can get all latest trending photo poses & photo style from this app.",
                style: GoogleFonts.karla(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 90.0,
          ),

          Expanded(
            child: Container(
              child: AnimatedButton(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => App()),
                      (route) => false);
                },
                color: Colors.orange,
                shadowDegree: ShadowDegree.dark,
                enabled: true,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
