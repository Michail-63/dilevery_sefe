import 'package:delivery/data/models/menu.dart';
import 'package:delivery/pages/menu/widget/menu.dart';
import 'package:flutter/material.dart';

class MenuSelection extends StatelessWidget {
  final List<Menu> menu;
  const MenuSelection({super.key,required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        controller: ScrollController(
            keepScrollOffset: false
        ),
        padding: EdgeInsets.only(top: 30.0),
        crossAxisCount: 3,
        children: [
          for (var item in menu)
            GridItem(item: item),
        ],
      ),
    );
  }
}