import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  _FAQsState createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "FAQs",
          style: GoogleFonts.rokkitt(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
