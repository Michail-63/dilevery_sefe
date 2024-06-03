import 'package:delivery/data/models/dish_data.dart';
import 'package:flutter/material.dart';

class DishPrice extends StatelessWidget {
  final Dish dishPage;

  const DishPrice({required this.dishPage});



  @override
  Widget build(BuildContext context) {
    final price = this.dishPage.price;
    final newprice = price ~/ 1.05;
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        Stack(
          children: [
            Row(children: [
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                child: Text("$price \u20BD", style: theme.displayMedium),
              ),
            ]),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 10, left: 15),
          child: Text("$newprice \u20BD", style: theme.displayLarge),
        ),
      ],
    );
  }
}
