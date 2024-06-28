import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  final int totalPrice;

  const TotalPrice({
    super.key,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Итого", style: theme.bodyLarge),
          // SizedBox(height: 50,width: 200,),
          Text("$totalPrice \u20BD", style: theme.titleLarge),
        ],
      ),
    );
  }
}
