import 'package:delivery/data/models/dish_data.dart';
import 'package:flutter/material.dart';

class DishView extends StatelessWidget {
  final Dish dishPage;

  const DishView({required this.dishPage});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 250,
              width: double.infinity,
              child: Image.asset(fit: BoxFit.fitWidth, this.dishPage.image)),
          Container(
            margin: EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 10),
            child: Text(this.dishPage.title, style: theme.headlineLarge),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Text(this.dishPage.text, style: theme.labelMedium),
          ),
        ]);
  }
}
