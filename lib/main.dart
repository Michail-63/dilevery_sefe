import 'dart:async';

import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/count_dish_to_cart.dart';
import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:delivery/data/models/lists/list_new_dishes.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/models/review.dart';
import 'package:delivery/data/repositories/api_repository.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  // Hive.registerAdapter(NewDishAdapter());
  Hive.registerAdapter(DishModelAdapter());
  Hive.registerAdapter(ReviewAdapter());
  Hive.registerAdapter(CountDishToCartAdapter());

  // await Hive.openBox<DishModal>('new_dish_box');
  await Hive.openBox<DishModel>("dish_box");

  await Hive.openBox<Review>('review_box');
  await Hive.openBox('count_box');

  // await Hive.box<NewDish>('new_dish_box').clear();
  // if (Hive.box<DishModal>('new_dish_box').isEmpty) {
  //   await Hive.box<DishModal>('new_dish_box').addAll(listDish);
  // }
  // GetIt.I.registerLazySingleton<AbstractDishRepository>(() => ApiRepository(
  //       dio: Dio(),
  //       dishBox: dishBox,
  //     ));

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
