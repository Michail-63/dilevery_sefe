// import 'package:delivery/data/models/new_dish.dart';
// import 'package:delivery/pages/main/widget/logotyp.dart';
// import 'package:delivery/pages/main/widget/progress_Indicator.dart';
// import 'package:delivery/pages/main/widget/category_dishes.dart';
//
// import 'package:flutter/material.dart';
//
// class BodyHomePage extends StatelessWidget {
//   final List<NewDish> recommendedDish;
//   final bool isloading;
//
//   BodyHomePage({
//     super.key,
//     required this.recommendedDish,
//     required this.isloading,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//
//       ],
//     );
//   }
// }

// ListView.builder(
//   // scrollDirection: Axis.horizontal,
//     itemCount: recommendedDish.length,
//     itemBuilder: (context, index) {
//       final dish = recommendedDish[index];
//       return Text('ads');
//
//       // CategoryDishes(dish: dish);
//     }),
// Column(children: [
//   Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(6.0),
//         child: Text('Рекомендуемое'),
//       ),
//       TextButton(
//         onPressed: () {},
//         child: Padding(
//           padding: const EdgeInsets.all(6.0),
//           child: Text('См.все', style: theme.titleSmall),
//         ),
//       )
//     ],
//   ),
//
// ])




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
