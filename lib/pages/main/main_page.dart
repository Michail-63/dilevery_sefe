import 'package:delivery/data/repositories/api_repository.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/body_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(
          DishToCartRepository(dishRepository: DishRepository()), ApiRepository())
        ..add(MainFetchEvent()),
      child: Scaffold(
          drawer: const DrawerPage(),
          appBar: AppBar(title: const Text('Главная'), actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {
                // GetIt.I<AbstractDishRepository>().getDishList();
              },
            ),
          ]),
          body: BodyMainPage()),
    );
  }
}
