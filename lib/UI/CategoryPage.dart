import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photographypose/UI/Appinfo.dart';
import 'package:photographypose/UI/FAQs.dart';
import 'package:photographypose/UI/Like.dart';
import 'package:slide_drawer/slide_drawer.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

enum SlideDrawerExampleType {
  BASIC,
  BACKGROUND,
  GRADIENT,
}

class _AppState extends State<App> {
  Key _appKey = UniqueKey();
  SlideDrawerExampleType type = SlideDrawerExampleType.BASIC;

  bool get _isBasic => type == SlideDrawerExampleType.BASIC;

  bool get _isBackground => type == SlideDrawerExampleType.BACKGROUND;

  bool get _isGradient => type == SlideDrawerExampleType.GRADIENT;

  List<MenuItem> get _itemsIcon => [
        MenuItem('FAQs', icon: CupertinoIcons.question_circle, onTap: () {
          _changeType(SlideDrawerExampleType.GRADIENT);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FAQs()));
        }),
        MenuItem('Like', icon: Icons.favorite_border, onTap: () {
          _changeType(SlideDrawerExampleType.GRADIENT);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LikeImagePose()));
        }),
        MenuItem('Contact Us',
            icon: Icons.mail_outline,
            onTap: () => _changeType(SlideDrawerExampleType.GRADIENT)),
        MenuItem('Rate', icon: Icons.star_border, onTap: () {
          _changeType(SlideDrawerExampleType.GRADIENT);
          // Navigator.push(context,MaterialPageRoute(builder: (context)=> RateApp()));
        }),
        MenuItem('App  Info',
            icon: Icons.info_outline_rounded,
            onTap: () {
              _changeType(SlideDrawerExampleType.GRADIENT);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppInfo()));
            } ),
      ];

  _changeType(type) {
    if (this.type != type)
      setState(() {
        this.type = type;
        _appKey = UniqueKey();
      });
  }

  Widget get _home {
    if (_isBasic) return _basic;
    if (_isBackground) return _background;
    if (_isGradient) return _gradient;
    return _basic;
  }

  Widget get _basic => SlideDrawer(
        child: HomePage(),
        items: _itemsIcon,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Colors.purpleAccent,
            Color(0xFF1CB5E0),
          ],
        ),
      );

  Widget get _background => SlideDrawer(
        child: HomePage(),
        brightness: Brightness.dark,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Colors.purpleAccent,
            Color(0xFF1CB5E0),
          ],
        ),
        items: _itemsIcon,
      );

  Widget get _gradient => SlideDrawer(
        child: HomePage(),
        brightness: Brightness.dark,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Colors.purpleAccent,
            Color(0xFF1CB5E0),
          ],
        ),
        curve: Curves.easeInOut,
        items: _itemsIcon,
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _appKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _home,
    );
  }
}

class HomePage extends StatefulWidget {
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "Poses Style",
          style: GoogleFonts.rokkitt(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => SlideDrawer.of(context)?.toggle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //=== Boy Poses ==//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Boy Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== GIRL  Poses ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Girl Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== Couple Poses ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Couple Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== kids Poses ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Kids Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== Wedding Poses === //
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Wedding Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== Attitude Girl Pose ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Attitude Girl Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== Attitude Boy Pose ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Attitude Boy Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== Pre-Wedding  Pose ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Pre-wedding Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //=== Group Pose ===//
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: h * 0.2,
                    width: w,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      border: Border.all(width: 2, color: Colors.orangeAccent),
                    ),
                    child: Center(
                      child: Text(
                        "Group Poses",
                        style: GoogleFonts.rokkitt(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'assets/images/two.png',
                        height: h * 0.23,
                        width: w * 0.22,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
