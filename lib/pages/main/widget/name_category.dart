import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/category/category_page.dart';
import 'package:flutter/material.dart';

class NameCategory extends StatelessWidget {
  final String name;
  final List<NewDish> category;


  const NameCategory({
    super.key,
    required this.name,
    required this.category,

  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('$name'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryPage(
                          category: category,
                          name: name,
                        )));
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('См.все', style: theme.titleSmall),
          ),
        )
      ],
    );
  }
}
