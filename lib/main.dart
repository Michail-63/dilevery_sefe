import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/review.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';




void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ReviewAdapter());
  final reviewBox = await Hive.openBox<Review>('review_box');


  runApp(const MyApp(



  ));
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

