import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BattonAddToCart extends StatelessWidget {
  const BattonAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(right: 10, left: 10),
      height: 65,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          context.read<DishBloc>().add(AddDishToCartEvent());

        },
        child: Text("Добавить в корзину", style: theme.bodyLarge),
      ),
    );
  }
}
