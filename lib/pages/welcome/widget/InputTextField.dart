import 'dart:ffi';

import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.name,


  });
  final String name;


  @override
  Widget build(BuildContext context) {
    final  theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20, bottom: 6,top: 20),
            child: Text(name,style: theme.bodyMedium,)),
        Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(

              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )),
      ],
    );
  }
}