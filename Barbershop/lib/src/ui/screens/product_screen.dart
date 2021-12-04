import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tober/src/ui/shared/product_card.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/text.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = 'product-screen';

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
                  ],
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: ProductCard(
                      url: imgList[index],
                      available: index.isOdd ? true : false,
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

List<String> imgList = [
  'https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
];
