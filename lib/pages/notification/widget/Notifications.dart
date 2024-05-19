// import 'dart:ui';
// import 'package:delivery/config/icon_path.dart';
// import 'package:delivery/config/theme.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class Notifications extends StatefulWidget {
//   @override
//  _NotificationsWidget createState() => _NotificationsWidget();
// }
//
// class _NotificationsWidget extends State<Notifications> {
//
//
//   Color _color = Colors.white10;
//   double _size = 0;
//   int _count = 0;
//
//   void _Change() {
//     setState(() {
//       _count++;
//     });
//   }
//   void _Change1() {
//     setState(() {
//       _size = 16;
//       _color = color2;
//       print("Стало $_count");
//     });
//   }
//   void _Change2() {
//     setState(() {
//       _size = 0;
//       _color = Colors.white30;
//       print("Стало $_count");
//       _count=0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).textTheme;
//     return Column(children: [
//         Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 _Change();
//               if (_count == 1) _Change1();
//               if (_count >= 2) _Change2();
//               },
//               child: ListTile(
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Заказ №56787 достовляется",
//                       style: TextStyle(
//                           color: _color, height: 2, fontSize: 18),
//                     ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, top: 8),
//                   child: SvgPicture.asset(
//                     IconPath.ellipse,
//                     height: _size,
//                     width: _size,
//                     color: color2,
//                   ),
//                 ),
//                   ],
//                 ),
//                 subtitle: Text(
//                   "Ваш заказ на сумму 1900р достовляется по адресу...",
//                   style: theme.labelLarge,
//                 ),
//                 // icon: _isEnabled ? Icon(Icons.radio_button_on) : Icon(Icons.offline_bolt) ,
//               ),
//             ),
//             Divider(
//               height: 15,
//               color: Colors.white30,
//             )
//           ],
//         ),
//     ]);
//   }
// }
