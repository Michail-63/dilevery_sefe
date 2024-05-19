import 'package:delivery/data/repositories/RootRepository.dart';
import 'package:delivery/pages/category/bloc/category_bloc.dart';
import 'package:delivery/pages/category/widget/GridCategoryDishes.dart';
import 'package:delivery/pages/drawer/DrawerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatelessWidget {
  final String category;


  CategoryPage({
    required this.category,

  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryBloc(RootRepository())
        ..add(CategoryFetchEvent(category: category)),
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return  Scaffold(
                  drawer: DrawerPage(),
                  appBar: AppBar(title: Text(state.title)),
                  body: GridCategoryDishes(isloading: state.isloading,
                    dishes: state.dishes,
                  ),
                );
        },
      ),
    );
  }
}
