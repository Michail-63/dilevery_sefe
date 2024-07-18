import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/cart_dish_row.dart';
import 'package:flutter/material.dart';

class CaregoryRowView extends StatelessWidget {
final List<DishModel>category;

  const CaregoryRowView({
    super.key, required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (var item in category)
            CartDishRow(item: item)
        ]));
  }
}
