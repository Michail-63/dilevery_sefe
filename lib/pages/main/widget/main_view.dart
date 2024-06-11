import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/name_category.dart';
import 'package:delivery/pages/main/widget/cart_dish_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {


  const MainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [

              Row(children: [
                for (var item in state.recommendedDishes) CartDishRow(item: item)
              ]),
            ],
          ));
    });
  }
}
