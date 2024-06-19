import 'package:delivery/data/models/dish.dart';
import 'package:flutter/material.dart';

class DishPrice extends StatelessWidget {
  final int price;

  const DishPrice({super.key, required this.price});



  @override
  Widget build(BuildContext context) {
    final price = this.price;
    final newPrice = price ~/ 1.05;
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        Stack(
          children: [
            Row(children: [
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: Text("$price \u20BD", style: theme.displayMedium),
              ),
            ]),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, left: 15),
          child: Text("$newPrice \u20BD", style: theme.displayLarge),
        ),
      ],
    );
  }
}
