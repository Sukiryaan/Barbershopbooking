import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/size.dart';
import 'package:tober/src/utils/styles/text.dart';

class BarberCard extends StatelessWidget {
  final VoidCallback onPressed;

  const BarberCard({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(largeBorderRadius),
            border: Border.all(color: primary_100, width: 2.4),
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: 200,
        ),
        Positioned(
          bottom: -24.0,
          left: 0.0,
          right: 0.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(largeBorderRadius),
                color: white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                      'https://scontent.fbtj1-1.fna.fbcdn.net/v/t1.18169-9/13507279_1213784885308088_1531041450610466935_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=973b4a&_nc_ohc=7T4Dvo57JR0AX9itUA2&_nc_ht=scontent.fbtj1-1.fna&oh=f83b2e381876efec5ea5916faa027bde&oe=60967860',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Raden Barber',
                        style: GoogleFonts.poppins(
                          textStyle: headingText.copyWith(
                            fontSize: 18,
                            color: primary_50,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        'Jl.Darussalam',
                        style: GoogleFonts.poppins(
                          textStyle: paragraphMedium.copyWith(
                            color: grey_80,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      _buildStar(),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: onPressed,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(60),
                                ),
                                color: primary_100,
                              ),
                              width: 130,
                              height: 50.0,
                              child: Center(
                                child: Text(
                                  'Detail',
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.0),
                          Text(
                            '2km - 2,5km',
                            style: GoogleFonts.poppins(
                              textStyle: smallCaption.copyWith(
                                color: grey_80,
                                fontWeight: FontWeight.w500,
                                fontSize: 8.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStar() {
    return Padding(
      padding: EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 18,
          ),
        ],
      ),
    );
  }
}
