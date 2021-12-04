import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/ui/screens/detail_employee_screen.dart';
import 'package:tober/src/ui/screens/product_screen.dart';
import 'package:tober/src/ui/shared/detail_barber_card.dart';
import 'package:tober/src/ui/shared/detail_barber_carousel.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/text.dart';

class DetailBarberScreen extends StatelessWidget {
  static const routeName = 'detail-barber';

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
        primary: true,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            color: white,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Raden Barber',
                        style: GoogleFonts.poppins(
                            textStyle: headingText.copyWith(fontSize: 20)),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Jl.Darussalam',
                        style: GoogleFonts.poppins(
                          textStyle: paragraphMedium.copyWith(
                            color: grey_80,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: grey_80,
                endIndent: 90.0,
                indent: 90.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product :',
                      style: GoogleFonts.poppins(
                          textStyle: smallCaption, color: grey_80),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, ProductScreen.routeName),
                      child: Text(
                        'Lihat Semua Product',
                        style: GoogleFonts.poppins(
                            textStyle: smallCaption, color: primary_100),
                      ),
                    ),
                  ],
                ),
              ),
              DetailBarberCarousel(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Hairstylish :',
                  style: GoogleFonts.poppins(
                      textStyle: smallCaption, color: grey_80),
                ),
              ),
              SizedBox(height: 16),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: DetailBarberCard(
                      onPressed: () =>
                          Navigator.pushNamed(context, DetailEmployeeScreen.routeName),
                    ),
                  );
                },
                shrinkWrap: true,
                primary: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
