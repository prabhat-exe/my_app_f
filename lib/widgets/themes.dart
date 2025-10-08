import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mythemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.white,
    canvasColor: creamColor,

    colorScheme: ColorScheme.light(
      primary: darkBluishColor,
      secondary: darkBluishColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkBluishColor,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: darkBluishColor,
      foregroundColor: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.black,
    canvasColor: darkCreamColor,

    colorScheme: ColorScheme.dark(
      primary: lightBluishColor,
      secondary: lightBluishColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkBluishColor,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
      ),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightBluishColor,
      foregroundColor: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      toolbarTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
