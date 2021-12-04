import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/ui/screens/login_screen.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/text.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_50,
      appBar: AppBar(
        title: Text(
          'Your Accounts',
          style: GoogleFonts.poppins(
            textStyle: headingText.copyWith(color: primary_100),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: primary_100),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: primary_50,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 26.0, left: 30, right: 30),
          child: Column(
            children: [
              _buildProfileTile(),
              SizedBox(height: 456),
              MaterialButton(
                onPressed: () => Navigator.pushReplacementNamed(
                    context, LoginScreen.routeName),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(),
                ),
                color: primary_100,
                minWidth: 306,
                height: 48.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileTile() {
    return InkWell(
      onTap: () => print('tap'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(
              'https://cf.shopee.co.id/file/6b7892b751b7d2b8f8309e4216972874',
            ),
          ),
          SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rizki Maulana',
                style: GoogleFonts.poppins(
                  textStyle: bigTitle.copyWith(
                    color: primary_100,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                '@rmrzki',
                style: GoogleFonts.poppins(
                  textStyle: bigTitle.copyWith(
                    color: grey_80,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 42),
          Icon(Icons.keyboard_arrow_right, size: 36, color: grey_80),
        ],
      ),
    );
  }
}
