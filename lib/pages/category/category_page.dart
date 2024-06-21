import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/dish/dish_page.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(title: Text('$name')),
        body: Expanded(
          child: GridView.count(
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 2,
            children: List.generate(category.length, (index) {
              return Card(
                margin: const EdgeInsetsDirectional.all(6),
                clipBehavior: Clip.hardEdge,
                color: color1,
                child: Container(
                  child: Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DishPage(
                                      dishId: category[index].dishId,
                                    )));

                        print('1');
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
                    ),
                    Positioned(
                      right: 10,
                      bottom: 90,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            print("Count + 1");
                          },
                          child: Container(
                            padding: const EdgeInsetsDirectional.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: color2,
                            ),
                            child: SvgPicture.asset(
                              IconPath.shape,
                              height: 20,
                              width: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ]),
                ),
              );
            }),
          ),
        ));

    // GridCategoryDishes(dishes: category));
  }
}
