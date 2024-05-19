import 'package:flutter/widgets.dart';

class Menu{
  const Menu({
    required this.title,
    required this.icon,
    required this.dst,
  });

  final String title;
  final String icon;
  final Widget dst;
}
