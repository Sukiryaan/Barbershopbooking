import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/size.dart';
import 'package:tober/src/utils/styles/text.dart';

class ProductCard extends StatelessWidget {
  final String url;
  final bool available;

  ProductCard({
    required this.url,
    required this.available,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(largeBorderRadius)),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
        ),
      ),
      height: 148,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lorem Ipsum',
            style: GoogleFonts.poppins(
              textStyle: headingText.copyWith(
                fontSize: 20,
                color: primary_100,
              ),
            ),
          ),
          Text('Pomade', style: GoogleFonts.poppins()),
          Expanded(child: SizedBox(height: 28)),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                  color: available ? Colors.green : Colors.red,
                ),
                width: 130,
                height: 40.0,
                child: Center(
                  child: Text(
                    available ? 'Available' : 'Out of stock',
                    style: GoogleFonts.poppins(color: white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
