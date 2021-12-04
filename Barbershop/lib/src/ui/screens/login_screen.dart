import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/ui/screens/main_screen.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/size.dart';
import 'package:tober/src/utils/styles/text.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_50,
      appBar: AppBar(
        title: Image.asset('assets/icons/tober.png', height: 28),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primary_50,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 36.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                'Selamat Datang',
                style: GoogleFonts.poppins(
                  textStyle: headingText.copyWith(
                    color: primary_100,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                'Silahkan masuk untuk melanjutkan',
                style: GoogleFonts.roboto(
                  textStyle: smallTitle.copyWith(
                    color: grey_80,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 48.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder().copyWith(
                    borderRadius: BorderRadius.all(
                      Radius.circular(smallBorderRadius),
                    ),
                  ),
                  hintText: 'No Handphone',
                ),
                cursorColor: primary_100,
              ),
              SizedBox(height: 14.0),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(smallBorderRadius),
                ),
                child: MaterialButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, MainScreen.routeName),
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(),
                  ),
                  color: primary_100,
                  minWidth: double.infinity,
                  height: 48.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
