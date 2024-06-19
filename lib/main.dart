import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/lists/list_new_dishes.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/models/review.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NewDishAdapter());
  Hive.registerAdapter(ReviewAdapter());
  await Hive.openBox<NewDish>('new_dish_box');
  await Hive.openBox<Review>('review_box');
  if (Hive.box<NewDish>('new_dish_box').isEmpty) {
    await Hive.box<NewDish>('new_dish_box').addAll(listDish);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: const MainPage()

        // SplashPage(duration: 3,goToPage:WelcomePage())
        );
  }
}
