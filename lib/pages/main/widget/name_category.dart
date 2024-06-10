
import 'package:flutter/material.dart';

class NameCategory extends StatelessWidget {
  const NameCategory({
    super.key,
    required this.name,

  });

  final String name;


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
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('См.все', style: theme.titleSmall),
          ),
        )
      ],
    );
  }
}
