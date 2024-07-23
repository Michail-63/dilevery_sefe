import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/menu/bloc/menu_bloc.dart';
import 'package:delivery/pages/menu/widget/menu_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)
    =>
    MenuBloc(DishToCartRepository(dishRepository: DishRepository()),
        DishRepository())
      ..add(MenuFetchEvent()),
        child: Scaffold(
            drawer: DrawerPage(),
            appBar: AppBar(title: Text('Меню'), actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                ),
                onPressed: () {
                  print("ON TAP 1");
                  // handle the press
                },
              ),
            ]),
            body: MenuSelection()),
      );
  }
}
