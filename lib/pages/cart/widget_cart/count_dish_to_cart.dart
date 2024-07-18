
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountDishToCart extends StatelessWidget {
  const CountDishToCart({
    super.key,
    required this.dish,
  });

  final DishToCart dish;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        InkWell(
          onTap: () {
            context.read<CartBloc>().add(DecrementCartEvent(dish.id));
            print("count = ${dish.count}");
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                border: Border.all(
                  color: Colors.white30,
                )),
            child: Center(
              child: Icon(
                Icons.remove,
                color: color2,
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white30,
              )),
          child: Center(
            child: Text(
              "${dish.count}",
              style: theme.titleMedium,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            context.read<CartBloc>().add(IncrementCartEvent(dish.id));
            print("count = ${dish.count}");
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                border: Border.all(
                  color: Colors.white30,
                )),
            child: Center(
              child: Icon(
                Icons.add,
                color: color2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
