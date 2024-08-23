import 'package:flutter/widgets.dart';

class Menu{
  const Menu({
    required this.title,
    required this.icon,
    // required this.dst,
    required this.categoryId,
  });

  final String title;
  final String categoryId;
  final String icon;
  // final Widget dst;

}
