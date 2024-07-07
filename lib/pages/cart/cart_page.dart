import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:delivery/pages/cart/widget_cart/body_cart_page.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget_cart/bottom_battom.dart';
import 'widget_cart/promocod.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) => CartBloc(DishRepository(),DishToCartRepository(dishRepository: DishRepository()))..add(CartFetchEvent( )),
        child: Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(title: const Text('Корзина'), actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
          ]),
          body: BodyCartPage(),
          bottomNavigationBar: BottomBattom(),
        ));
  }
}
//

// SizedBox(height: 15,),
// Promocod(),
// Column(
// children: [
// // Row(
// //   children: [
// //     Container(
// //       margin: const EdgeInsets.all(20),
// //       child: Text("Итого", style: theme.bodyLarge),
// //     ),
// //     const SizedBox(
// //       width: 185,
// //     ),
// //     Container(
// //       child: Text("2540 \u20BD", style: theme.titleLarge),
// //     ),
// //   ],
// // ),
// BottomBattom()
// ],
