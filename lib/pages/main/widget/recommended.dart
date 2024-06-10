import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/row_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Recommended extends StatelessWidget {
final List<NewDish>category;

  const Recommended({
    super.key, required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            for (var item in state.recommendedDishes) RowCategory(item: item)
          ]));
    });
  }
}
