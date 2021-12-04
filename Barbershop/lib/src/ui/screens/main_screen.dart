import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:tober/src/ui/screens/booking_screen.dart';
import 'package:tober/src/ui/screens/home_screen.dart';
import 'package:tober/src/ui/screens/profile_screen.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/decoration.dart';

class MainScreen extends StatelessWidget {
  static const routeName = 'main';

  final _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_50,
      body: PageView(
        children: [
          BookingScreen(),
          HomeScreen(),
          ProfileScreen(),
        ],
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        decoration: BaseDecoration.yShadowDecoration,
        child: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.library_books, title: "Booking"),
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.person, title: "Profile")
          ],
          onTabChangedListener: (index) {
            _moveToPage(index);
          },
          initialSelection: 1,
          barBackgroundColor: white,
          circleColor: primary_100,
          activeIconColor: white,
          inactiveIconColor: primary_100,
          textColor: grey_80,
        ),
      ),
    );
  }

  _moveToPage(int index) {
    _pageController.jumpToPage(index);
  }
}
