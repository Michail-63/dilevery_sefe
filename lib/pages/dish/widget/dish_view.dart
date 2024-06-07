import 'package:delivery/data/models/dish.dart';
import 'package:flutter/material.dart';

class DishView extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const DishView({
    required this.image,
    required this.title,
    required this.text,
  });

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
              child: Image.asset(fit: BoxFit.fitWidth, this.image)),
          Container(
            margin: EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 10),
            child: Text(this.title, style: theme.headlineLarge),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Text(this.text, style: theme.labelMedium),
          ),
        ]);
  }
}
