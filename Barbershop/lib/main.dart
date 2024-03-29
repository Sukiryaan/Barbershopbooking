import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tober/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(App());
  });
}
