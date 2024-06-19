import 'package:delivery/config/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBattom extends StatelessWidget {
  const BottomBattom({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final  theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          color: color2, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
      height: 55,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: color2,

        ),
        child: Text("Оформить заказ",style: theme.headlineMedium),
      ),
    );
  }
}