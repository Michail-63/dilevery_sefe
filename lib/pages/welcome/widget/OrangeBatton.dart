import 'package:delivery/config/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrangeBatton extends StatelessWidget {
  final String name;
 Widget  goToPage;

   OrangeBatton({super.key, required this.name,required this.goToPage});



  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
            decoration:
          BoxDecoration(color: color2, borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(right: 20, left: 20,),
      height: 70,
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
        onPressed: () {

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => this.goToPage),
          );

        },
        child: Text(
          name,
          style: theme.bodyLarge,
        ),
      ),
    );
  }
}
