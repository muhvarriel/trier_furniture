import 'package:flutter/material.dart';
import 'package:trier_furniture/pages/pages.dart';
import 'package:trier_furniture/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        accentColor: secondaryColor,

        // Define the default font family.
        fontFamily: 'Poppins',
      ),
      home: Homepage(),
    );
  }
}
