import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:delivery/pages/cart/widget_cart/body_cart_page.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget_cart/bottom_battom.dart';
import 'widget_cart/promocod.dart';

class CartPage extends StatelessWidget {

  const CartPage({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme
        .of(context)
        .textTheme;
    return BlocProvider(
      create: (context) => CartBloc(DishRepository( ))..add(CartFetchEvent()),
      child: Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(title: const Text('Корзина'), actions: [
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
          body: BodyCartPage(),
          bottomNavigationBar: const BottomBattom()),
    );
  }
}


// BlocBuilder<CartBloc, CartState>(
//   builder: (context, state) {
//     return BodyCartScreen(count: state.count,);
//   },
// ),

//
// [
// const SizedBox(
// height: 20,
// ),
// BlocBuilder<CartBloc, CartState>(
// builder: (context, state) {
// return BodyCartScreen(count: state.count,);
// },
// ),
// const Divider(
// height: 15,
// color: Colors.white30,
// ),
//
// const SizedBox(
// height: 10,
// ),
//
// ],
