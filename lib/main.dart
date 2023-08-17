import 'package:flutter/material.dart';
import 'package:mart_app/pages/home_page.dart';
import 'package:mart_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/Home",
        routes: {
          "/": (context) => LoginPage(),
          "/Login": (context) => LoginPage(),
          "/Home": (context) => HomePage(),
        });
  }
}
