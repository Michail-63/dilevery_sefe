import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:delivery/pages/cart/widget_cart/list_dish_to_cart.dart';
import 'package:delivery/pages/cart/widget_cart/list_dish_to_cart_custom.dart';
import 'package:delivery/pages/cart/widget_cart/total_price.dart';
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
        final int dishCount = state.dishesToCArt.length;
        return dishCount < 4
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListDishToCart(
                    dishesToCArt: state.dishesToCArt,
                  ),
                  TotalPrice(totalPrice: state.totalPrice)
                ],
              )
            : ListDishToCartCustom(
                dishesToCArt: state.dishesToCArt,
                totalPrice: state.totalPrice,
              );
      },
    );
  }
}
