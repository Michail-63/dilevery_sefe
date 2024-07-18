import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/data/repositories/review_repository.dart';
import 'package:delivery/data/repositories/new_ dish_repository.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/body_ dish_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DishPage extends StatelessWidget {
  String dishId;

  DishPage({
    super.key,
    required this.dishId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            DishBloc(DishRepository(),ReviewRepository(),DishToCartRepository(dishRepository: DishRepository()))..add(DishFetchEvent(dishId: dishId)),
        child:  BodyDishPage());
  }
}
