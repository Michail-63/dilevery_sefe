import 'dart:ui';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/cart/widget_cart/count_dish_to_cart.dart';
import 'package:delivery/pages/dish/dish_page.dart';
import 'package:flutter/material.dart';

class BodyDishToCart extends StatelessWidget {
  final DishToCart dish;

  const BodyDishToCart({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DishPage(
                      dishId: dish.dishId,
                    )));
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment:MainAxisAlignment.start , children: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              clipBehavior: Clip.hardEdge,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: color2, borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                dish.image,
                fit: BoxFit.fitWidth,
              )),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,children: [
              Text(
                dish.title,
                style: theme.bodyMedium,
              ),

              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CountDishToCart(dish: dish),
                  Text("${dish.price}  \u20BD", style: theme.titleMedium),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
