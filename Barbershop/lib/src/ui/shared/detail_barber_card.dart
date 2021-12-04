import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/size.dart';
import 'package:tober/src/utils/styles/text.dart';

class DetailBarberCard extends StatelessWidget {
  final VoidCallback onPressed;

  DetailBarberCard({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(largeBorderRadius),
          color: primary_100,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.all(Radius.circular(largeBorderRadius)),
              child: CachedNetworkImage(
                imageUrl:
                    'https://pbs.twimg.com/profile_images/536824825671458816/757QCyPx.jpeg',
                fit: BoxFit.cover,
                width: 120,
                height: 160,
              ),
            ),
            SizedBox(width: 40.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Johny Sulaiman',
                  style: GoogleFonts.poppins(
                    textStyle: headingText.copyWith(
                      fontSize: 18,
                      color: primary_50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'Profesional Barber',
                  style: GoogleFonts.poppins(
                    textStyle: paragraphMedium.copyWith(
                      color: grey_40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                _buildStar(),
                SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  onTap: onPressed,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(60),
                      ),
                      color: white,
                    ),
                    width: 130,
                    height: 40.0,
                    child: Center(
                      child: Text(
                        'View Profile',
                        style: GoogleFonts.poppins(color: grey_100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStar() {
    return Padding(
      padding: EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: primary_50,
            size: 18,
          ),
          SizedBox(width: 8.0),
          Text(
            '4.8',
            style: paragraphMedium.copyWith(
              color: primary_50,
            ),
          )
        ],
      ),
    );
  }
}
