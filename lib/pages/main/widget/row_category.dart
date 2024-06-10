
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowCategory extends StatelessWidget {
  const RowCategory({
    super.key,
    required this.item,

  });

  final NewDish item;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
   return  Card(
     margin: EdgeInsetsDirectional.only(start: 6, end: 6),
     clipBehavior: Clip.hardEdge,
     color: color1,
     child: Container(
       width: 190,
       height: 290,
       child: Stack(children: [
         InkWell(
           onTap: () {
             // Navigator.push(
             //     context,
             //     MaterialPageRoute(
             //         builder: (context) =>
             //             DishPage(item.id)));

             print('1');
           },
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image.asset(
                 width: 190,
                 height: 190,
                 fit: BoxFit.fitWidth,
                 item.image,
               ),
               Row(
                 children: [
                   Padding(
                     padding:
                     const EdgeInsets.only(left: 10.0, top: 5),
                     child: Text(
                       "${item.price} \u20BD ",
                       style: theme.titleMedium,
                     ),
                   ),
                 ],
               ),
               Padding(
                 padding:
                 const EdgeInsets.only(left: 10.0),
                 child: Text(item.title, style: theme.bodyMedium),
               ),
             ],
           ),
         ),
         Positioned(
           right: 10,
           bottom: 80,
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




  }
}


//

//
// onTap: () {
// //
// // Navigator.push(
// //     context,
// //     MaterialPageRoute(
// //         builder: (context) =>
// //             DishPage(dishId: dish.id)));