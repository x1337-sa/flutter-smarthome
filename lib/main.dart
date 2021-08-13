import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'home.dart';


void main() async {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: Constants.appName,
      // theme: Constants.lightTheme,
      // darkTheme: Constants.darkTheme,
      //home: MainScreen(),
      home: Details(),
    );
  }
}
