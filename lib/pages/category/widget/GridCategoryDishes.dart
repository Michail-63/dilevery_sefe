import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/pages/dish/dish_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridCategoryDishes extends StatelessWidget {
  final List<Dish> dishes;
  final bool isloading;



  GridCategoryDishes({
    required this.dishes,
    required this.isloading,


  });

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 2;
    final double itemWidth = 1.3;
    final theme = Theme.of(context).textTheme;

    return isloading
        ? Container(
            width: double.infinity,
            child: Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          )
        : Expanded(
            child: GridView.count(
              childAspectRatio: (itemWidth / itemHeight),
              crossAxisCount: 2,
              children: List.generate(dishes.length, (index) {
                return Card(
                  margin: EdgeInsetsDirectional.all(6),
                  clipBehavior: Clip.hardEdge,
                  color: color1,
                  child: Container(
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DishPage(dishId:dishes[index].id)));

                          print('1');
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              width: 195,
                              height: 195,
                              fit: BoxFit.cover,
                              dishes[index].image,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Text(
                                    "${dishes[index].price} \u20BD ",
                                    style: theme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(dishes[index].title,
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
                              padding: EdgeInsetsDirectional.all(10),
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
          );
  }
}
