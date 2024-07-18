import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryDishes extends StatelessWidget {
  final DishMod dish;
  const CategoryDishes({
    super.key,
    required this.dish,
  });


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsetsDirectional.all(6),
      clipBehavior: Clip.hardEdge,
      color: color1,
      child: Container(
        width: 185,
        height: 295,
        child: Stack(children: [
          InkWell(
            onTap: () {
              //
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             DishPage(dishId: dish.id)));
            },
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Image.asset(
                  width: 185,
                  fit: BoxFit.fitWidth,
                  dish.image,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 10),
                      child: Text(
                        '${dish.price}  \u20BD ',
                        style: theme.titleMedium,
                                            ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0),
                  child: Text(dish.title,
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
                  padding:
                  EdgeInsetsDirectional.all(10),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(20),
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
  }
}
