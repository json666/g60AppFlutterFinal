



import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/pages/home_page.dart';
import 'package:g60_app_flutter_final/pages/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => InitialScreen(),
        "homePage": (context) => HomePage(),
      },
      
    );
  }
}
