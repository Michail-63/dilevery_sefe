import 'package:flutter/material.dart';

class PasvordTextField extends StatelessWidget {
  PasvordTextField({
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
            margin: EdgeInsets.only(left: 20, bottom: 6,top: 20),
            child: Text(name,style: theme.bodyMedium,)),
        Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            child: TextField(

              obscureText: true,


              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.all(10),
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