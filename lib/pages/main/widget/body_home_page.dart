import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/main/widget/logotyp.dart';
import 'package:delivery/pages/main/widget/progress_Indicator.dart';
import 'package:delivery/pages/main/widget/single_category_dishes.dart';

import 'package:flutter/material.dart';

class BodyHomePage extends StatelessWidget {
  final List<NewDish> recommendedDish;
  final bool isloading;

  // final List<NewDish> favoritesDishes;
  // final List<NewDish> theBestDishes;
  // final List<NewDish> popularDishes;

  BodyHomePage({
    super.key,
    required this.recommendedDish,
    required this.isloading,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Logotyp(),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return isloading
                      ? WidgetProgressIndicator()
                      :  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('Рекомендуемое'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text('См.все', style: theme.titleSmall),
                          ),
                        )
                      ],
                    ),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recommendedDish.length,
                        itemBuilder: (context, ndex) {
                          return SingleCategoryDishes(dish:recommendedDish[ndex] );
                        })
                  ]);
                }))
      ],
    );

    //
    // return isloading
    //     ? WidgetProgressIndicator()
    //     : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    //         Logotyp(),
    //         Expanded(
    //           child: ListView.builder(
    //             itemCount: categories.length,
    //             itemBuilder: (BuildContext context, int index) {
    //               return Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.all(6.0),
    //                         child: Text(categories[index].title),
    //                       ),
    //                       TextButton(
    //                         onPressed: () {
    //                           Navigator.push(
    //                               context,
    //                               MaterialPageRoute(
    //                                   builder: (context) => CategoryPage(
    //                                         category: categories[index].title,
    //                                       )));
    //                         },
    //                         child: Padding(
    //                           padding: const EdgeInsets.all(6.0),
    //                           child: Text('См.все', style: theme.titleSmall),
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                   SingleChildScrollView(
    //                       scrollDirection: Axis.horizontal,
    //                       child: Row(children: [
    //                         for (var item in categories[index].dishes)
    //                           SingleCategoryDishes(dish: item)
    //                       ]))
    //                 ],
    //               );
    //             },
    //           ),
    //         ),
    //       ]);
  }
}
