import 'package:flutter/material.dart';

const Color primary_100 = Color(0xFFE77E4E);
const Color primary_50 = Color(0xFF1A222B);

const Color grey_100 = Color(0xFF262626);
const Color grey_80 = Color(0xFF858585);
const Color grey_60 = Color(0xFFCCCCCC);
const Color grey_40 = Color(0xFFEBEAEA);
const Color grey_20 = Color(0xFFF7F7F7);

const Color shadowColor = Color.fromRGBO(38, 38, 38, 0.16);

const Color orange = Color(0xFFF6871D);
const Color green = Color(0xFF178737);
const Color pink = Color(0xFFF4147C);
const Color white = Color(0xFFFFFFFF);
const Color orangeTransparent = Color.fromRGBO(246, 135, 29, 0.32);
const Color greenTransparent = Color.fromRGBO(23, 135, 55, 0.32);
const Color pinkTransparent = Color.fromRGBO(244, 20, 124, 0.32);

const Color transparent = Color(0x00000000);

const Map<int, Color> primaryColorCodes = {
  // primary_100 = FF0000
  50: Color.fromRGBO(255, 0, 0, .1),
  100: Color.fromRGBO(255, 0, 0, .2),
  200: Color.fromRGBO(255, 0, 0, .3),
  300: Color.fromRGBO(255, 0, 0, .4),
  400: Color.fromRGBO(255, 0, 0, .5),
  500: Color.fromRGBO(255, 0, 0, .6),
  600: Color.fromRGBO(255, 0, 0, .7),
  700: Color.fromRGBO(255, 0, 0, .8),
  800: Color.fromRGBO(255, 0, 0, .9),
  900: Color.fromRGBO(255, 0, 0, 1),
};
const MaterialColor primaryMaterialColor =
    MaterialColor(0xFFFF0000, primaryColorCodes);
