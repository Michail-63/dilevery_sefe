
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/cart/widget_cart/body_dish_to_cart.dart';
import 'package:delivery/pages/cart/widget_cart/promocod.dart';
import 'package:delivery/pages/cart/widget_cart/total_price.dart';
import 'package:flutter/material.dart';

class ListDishToCartCustom extends StatelessWidget {
  const ListDishToCartCustom({
    super.key,
    required this.dishesToCArt,
    required this.totalPrice,

  });
  final List<NewDish>dishesToCArt;

final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: List.generate(dishesToCArt.length, (index) {

            return Column(
              children: [
                InkWell(
                    onLongPress: () {
                      // context.read<DishBloc>().add(
                      //     DeleteReviewDishEvent(
                      //         dishId: listDish[index].dishId));
                    },
                    child: BodyDishToCart(dish:dishesToCArt[index])
                ),
                if(index < dishesToCArt.length - 1 )
                  Divider(height: 15, color: Colors.white12,),
                if( index == dishesToCArt.length-1)
                  Promocod(),
                if( index == dishesToCArt.length-1)
                  TotalPrice(totalPrice: totalPrice,),
              ],
            );
          }),
        ),
      ],
    );
  }
}