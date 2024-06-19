import 'package:flutter/material.dart';

class TransparentBatton extends StatelessWidget {
  final String name;
  Widget goToPage;

   TransparentBatton({
    super.key,
    required this.name,
    required this.goToPage,
  });


  @override
  Widget build(BuildContext context) {
    final  theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(  color: Colors.white30,
          width:2,
        ),
          borderRadius: BorderRadius.circular(15)
      ),
      margin: const EdgeInsets.only(right: 20, left: 20,top: 30),
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
        child: Text(name,style: theme.bodyLarge,),
      ),
    );
  }
}
