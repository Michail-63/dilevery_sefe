import 'package:flutter/widgets.dart';

class DrawerMenuData {
  const DrawerMenuData({
    required this.title,
    required this.icon,
    required this.dst,
  });


  final String title;
  final String icon;
  final Widget dst;
}
