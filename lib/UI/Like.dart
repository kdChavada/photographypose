import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LikeImagePose extends StatefulWidget {
  @override
  _LikeImagePoseState createState() => _LikeImagePoseState();
}

class _LikeImagePoseState extends State<LikeImagePose> {
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
          "Like Pose",
          style: GoogleFonts.rokkitt(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) => new Container(

          child: Center(
            child: Container(
              child: Image.asset(
                  'assets/images/cody-scott-milewski-rUngkoF36zM-unsplash.jpg',
              height: h,
              width: w,
              fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
