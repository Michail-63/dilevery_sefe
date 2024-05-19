import 'package:flutter/material.dart';

Color color1 = Color(0xff24222C);
Color color2 = Color(0xFFFF6F14);
Color color3 = Color(0xff1a1a21);

final ThemeData lightTheme = ThemeData(
  //
  scaffoldBackgroundColor: color3,
  appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      backgroundColor: color1,
      iconTheme: IconThemeData(
        color: color2,
        size: 32,
      ),
      actionsIconTheme: IconThemeData(
        color: color2,
        size: 32,
      )),
  //
  //
  textTheme: TextTheme(

    headlineLarge: TextStyle(fontSize: 30, color: Colors.white),
    headlineMedium: TextStyle(fontSize: 25, color: Colors.white),
    headlineSmall: TextStyle(),


    displayMedium: TextStyle(
      color: Colors.white70,
      fontSize: 28,
      decoration: TextDecoration.lineThrough,
      decorationColor: Colors.white,
      decorationThickness: 1,
    ),
    displayLarge: TextStyle(fontSize: 28, color: Color(0xFFFF6F14)),
    displaySmall: TextStyle(),


    titleLarge: TextStyle(fontSize: 25, color: Color(0xFFFF6F14)),
    titleMedium: TextStyle(fontSize: 20, color: Color(0xFFFF6F14)),
    titleSmall: TextStyle(fontSize: 15, color: Color(0xFFFF6F14)),


    bodyLarge: TextStyle(fontSize: 25, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
    bodySmall: TextStyle(fontSize: 15, color: Colors.white),


    labelLarge: TextStyle(fontSize: 25, color: Colors.white30),
    labelMedium: TextStyle(fontSize: 20, color: Colors.white30),
    labelSmall: TextStyle(fontSize: 15, color: Colors.white30),
  ),
  //
  //
  drawerTheme: DrawerThemeData(
    backgroundColor: color1,
    shadowColor: Colors.black87,
    surfaceTintColor: Colors.black87,
  ),
  //
  //
  primaryColor: Colors.blue,
  cardColor: const Color(0xFFEEEEEE),
  brightness: Brightness.light,
  splashColor: Colors.brown,
  highlightColor: const Color(0xFFbf6b49),
  //
  //
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      selectedItemColor: Colors.brown,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.white),
);
