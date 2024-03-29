import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telkomsel_app/screens/bottom_nav_bar.dart';
import 'package:telkomsel_app/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: "Telkomsel App Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(selectedItemColor: redColor),
      ),
      home: BottomNavBar(),
    );
  }
}
