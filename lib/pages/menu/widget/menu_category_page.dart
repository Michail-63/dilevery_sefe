import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/pages/dish/dish_page.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/menu/bloc/menu_bloc.dart';
import 'package:delivery/pages/menu/widget/add_dish_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuCategoryPage extends StatelessWidget {
  const MenuCategoryPage({
    super.key,
    required this.title,
    required this.category,
  });

  final String title;
  final List<DishModel> category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    const double itemHeight = 2;
    const double itemWidth = 1.2;
    return Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(title: Text('${title}')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: (itemWidth / itemHeight)),
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsetsDirectional.all(6),
              clipBehavior: Clip.hardEdge,
              color: color1,
              child: Stack(children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DishPage(
                                  dishId: category[index].id,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        width: 190,
                        height: 190,
                        fit: BoxFit.fitWidth,
                        imageUrl: category[index].image,
                        placeholder: (context, url) => Image.asset(
                            width: 190,
                            height: 190,
                            fit: BoxFit.fitWidth,
                            ImagePass.sushi),
                        errorWidget: (context, url, error) => Image.asset(
                            width: 190,
                            height: 190,
                            fit: BoxFit.fitWidth,
                            ImagePass.sushi),
                      ),
                      //
                      // Image.asset(
                      //   width: 195,
                      //   height: 195,
                      //   fit: BoxFit.cover,
                      //   category[index].image,
                      // ),
                      //

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10),
                            child: Text(
                              "${category[index].price} \u20BD ",
                              style: theme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child:
                            Text(category[index].name, style: theme.bodyMedium),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 120,
                  child: AddDishToCart(dishId: category[index].id),
                ),
              ]),
            );
          },
        )
    );
  }
}
