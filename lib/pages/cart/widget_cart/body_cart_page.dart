import 'dart:async';

import 'package:delivery/data/models/count_dish_to_cart.dart';
import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:delivery/pages/cart/widget_cart/list_dish_to_cart.dart';
import 'package:delivery/pages/cart/widget_cart/promocod.dart';
import 'package:delivery/pages/cart/widget_cart/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyCartPage extends StatelessWidget {
  BodyCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final int dishCount = state.listDishToCart.length;
        return StreamBuilder<CountDishToCart>(
          stream:null,

          // getDishToCArtSteam(),

          builder: (context, snapshot) {
            return ViewCartPage(
              dishCount: dishCount,
              totalPrice: state.totalPrice,
              dishesToCArt: state.listDishToCart,
            );
          },
        );
      },
    );
  }
}

class ViewCartPage extends StatelessWidget {
  final int dishCount;
  final int totalPrice;
  final List<DishToCart> dishesToCArt;

  const ViewCartPage({
    super.key,
    required this.dishCount,
    required this.totalPrice,
    required this.dishesToCArt,
  });

  @override
  Widget build(BuildContext context) {
    return dishCount == 0
        ? Center(child: Text('Ваша корзина пуста'))
        : dishCount < 4
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ListDishToCart(dishesToCArt: dishesToCArt),
                      Promocod(),
                    ],
                  ),
                  TotalPrice(totalPrice: totalPrice)
                ],
              )
            : ListView(
                children: [
                  ListDishToCart(dishesToCArt: dishesToCArt),
                  Promocod(),
                  TotalPrice(totalPrice: totalPrice)
                ],
              );
  }
}
