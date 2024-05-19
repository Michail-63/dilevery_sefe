


import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/main/MainPage.dart';
import 'package:delivery/pages/splash/SplashPage.dart';
import 'package:delivery/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    theme: lightTheme,
        debugShowCheckedModeBanner:false,
      home:MainPage()

        // SplashPage(duration: 3,goToPage:WelcomePage())
    );
  }
}

