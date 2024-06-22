import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:delivery/pages/cart/widget_cart/promocod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyCartPage extends StatelessWidget {
  const BodyCartPage({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final  theme = Theme.of(context).textTheme;
        return Column(
          children: [
            Column(
              children: List.generate(state.dishesToCArt.length, (index) {
                return InkWell(
                    onLongPress: () {
                      // context.read<DishBloc>().add(
                      //     DeleteReviewDishEvent(
                      //         dishId: listDish[index].dishId));
                    },
                    child: Row(
                      children: [
                        Text(state.dishesToCArt[index].title),
                        SizedBox(width
                                                                                                                                                                                                                              : 10,),
                        Text('${state.dishesToCArt[index].count}'),
                      ],
                    )
                );
              }),
            ),
            Promocod(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text("Итого", style: theme.bodyLarge),
                ),
                const SizedBox(
                  width: 185,
                ),
                Container(
                  child: Text("2540 \u20BD", style: theme.titleLarge),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}