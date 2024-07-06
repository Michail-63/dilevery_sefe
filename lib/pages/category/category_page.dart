import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/pages/category/bloc/category_bloc.dart';
import 'package:delivery/pages/category/widget/category_add_dish_to_cart.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/dish_page.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatelessWidget {
  final String name;
  final List<NewDish> category;

  CategoryPage({
    required this.category,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    const double itemHeight = 2;
    const double itemWidth = 1.3;
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => CategoryBloc(
        DishRepository(),
        DishToCartRepository(),
      ),
      child: CategoryView(
          name: name,
          itemWidth: itemWidth,
          itemHeight: itemHeight,
          category: category,
          theme: theme),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.name,
    required this.itemWidth,
    required this.itemHeight,
    required this.category,
    required this.theme,
  });

  final String name;
  final double itemWidth;
  final double itemHeight;
  final List<NewDish> category;
  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(title: Text('$name')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: (itemWidth / itemHeight)),
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsetsDirectional.all(6),
              clipBehavior: Clip.hardEdge,
              color: color1,
              child: Stack(children: [
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DishPage(
                                      dishId: category[index].dishId,
                                    )));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            width: 195,
                            height: 195,
                            fit: BoxFit.cover,
                            category[index].image,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 10),
                                child: Text(
                                  "${category[index].price} \u20BD ",
                                  style: theme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(category[index].title,
                                style: theme.bodyMedium),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Positioned(
                  right: 10,
                  bottom: 90,
                  child: CategoryAddDishToCart(dishId: category[index].dishId),
                ),
              ]),
            );
          },
        ));
  }
}
