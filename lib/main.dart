import 'package:flutter/material.dart';
import 'package:fprojects/pages/home_page.dart';
import 'package:fprojects/pages/login_page.dart';
import 'package:fprojects/utils/routes.dart';
import 'package:fprojects/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mythemes.themeData(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mythemes.darkTheme(context),

      // home: HomePage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
