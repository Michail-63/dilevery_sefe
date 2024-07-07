import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/cart/widget_cart/body_dish_to_cart.dart';
import 'package:delivery/pages/cart/widget_cart/promocod.dart';
import 'package:flutter/material.dart';

class ListDishToCart extends StatelessWidget {
  const ListDishToCart({
    super.key,
    required this.dishesToCArt,
  });

  final List<DishToCart> dishesToCArt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(dishesToCArt.length, (index) {
        return Column(
          children: [
            BodyDishToCart(dish: dishesToCArt[index]),
            if (index < dishesToCArt.length - 1)
              Divider(height: 15, color: Colors.white12)
          ],
        );
      }),
    );
  }
}
