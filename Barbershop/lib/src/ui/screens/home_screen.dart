import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/ui/screens/detail_barber_screen.dart';
import 'package:tober/src/ui/shared/barber_card.dart';
import 'package:tober/src/ui/shared/barber_carousel.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/text.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_50,
      appBar: AppBar(
        title: Image.asset('assets/icons/tober.png', height: 28),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primary_50,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        primary: true,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BarberCarousel(),
            Text(
              'Barber Terdekat',
              style: GoogleFonts.poppins(
                  textStyle: headingText.copyWith(fontSize: 20, color: white)),
            ),
            SizedBox(height: 16),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 56),
                  child: BarberCard(
                    onPressed: () => Navigator.pushNamed(
                        context, DetailBarberScreen.routeName),
                  ),
                );
              },
              shrinkWrap: true,
              primary: false,
            ),
          ],
        ),
      ),
    );
  }
}
