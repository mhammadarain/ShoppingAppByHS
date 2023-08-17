import 'package:flutter/material.dart';
import 'package:mart_app/pages/home_page.dart';
import 'package:mart_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart_app/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: GoogleFonts.lato().fontFamily),
        initialRoute: "/Login",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
        });
  }
}
