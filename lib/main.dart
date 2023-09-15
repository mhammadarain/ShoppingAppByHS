import 'package:flutter/material.dart';
import 'package:mart_app/pages/cart_page.dart';
import 'package:mart_app/pages/home_page.dart';
import 'package:mart_app/pages/login_page.dart';
import 'package:mart_app/utils/routes.dart';
import 'package:mart_app/widgets/themes.dart';

void main() {
  // You can set up any other necessary configurations here.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: "/home",
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.cartRoute: (context) => const CartPage(),
        });
  }
}
