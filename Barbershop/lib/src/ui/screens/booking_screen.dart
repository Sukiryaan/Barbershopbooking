import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/text.dart';

class BookingScreen extends StatelessWidget {
  static const routeName = 'booking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_50,
      appBar: AppBar(
        title: Text(
          'Your Booking',
          style: GoogleFonts.poppins(
            textStyle: headingText.copyWith(color: primary_100),
          ),
        ),
        elevation: 0,
        backgroundColor: primary_50,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 26.0, left: 30, right: 30),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
