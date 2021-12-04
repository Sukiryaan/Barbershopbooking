import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tober/src/core/routes/app_route.dart';
import 'package:tober/src/ui/screens/splash_screen.dart';
import 'package:tober/src/utils/sources/strings.dart';
import 'package:tober/src/utils/styles/colors.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => MaterialApp(
        title: GlobalString.title,
        theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: primary_100,
        ),
        onGenerateRoute: AppRoute.generateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
