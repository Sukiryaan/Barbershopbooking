import 'package:flutter/material.dart';
import 'package:tober/src/ui/screens/booking_screen.dart';
import 'package:tober/src/ui/screens/detail_barber_screen.dart';
import 'package:tober/src/ui/screens/detail_employee_screen.dart';
import 'package:tober/src/ui/screens/home_screen.dart';
import 'package:tober/src/ui/screens/login_screen.dart';
import 'package:tober/src/ui/screens/main_screen.dart';
import 'package:tober/src/ui/screens/product_screen.dart';
import 'package:tober/src/ui/screens/profile_screen.dart';
import 'package:tober/src/ui/screens/splash_screen.dart';
import 'package:tober/src/utils/sources/strings.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case MainScreen.routeName:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case BookingScreen.routeName:
        return MaterialPageRoute(builder: (_) => BookingScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case DetailBarberScreen.routeName:
        return MaterialPageRoute(builder: (_) => DetailBarberScreen());
      case ProductScreen.routeName:
        return MaterialPageRoute(builder: (_) => ProductScreen());
      case DetailEmployeeScreen.routeName:
        return MaterialPageRoute(builder: (_) => DetailEmployeeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Text(GlobalString.page_not_found, style: TextStyle(color: Colors.black)),
            ),
          ),
        );
    }
  }
}
