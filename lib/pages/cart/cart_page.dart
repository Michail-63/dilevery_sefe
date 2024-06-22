import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget_cart/bottom_battom.dart';
import 'widget_cart/promocod.dart';

class CartPage extends StatelessWidget {
  final List<NewDish> listDish;

  const CartPage({
    super.key,
    required this.listDish,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(title: const Text('Корзина'), actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              print("ON TAP 1");
              // handle the press
            },
          ),
        ]),
        body: Column(
          children: [
            Column(
              children: List.generate(listDish.length, (index) {
                return InkWell(
                  onLongPress: () {
                    context.read<DishBloc>().add(
                        DeleteReviewDishEvent(dishId: listDish[index].dishId));
                  },
                  child: Text(listDish[index].title)
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
        ),
        bottomNavigationBar: const BottomBattom());
  }
}

// BlocBuilder<CartBloc, CartState>(
//   builder: (context, state) {
//     return BodyCartScreen(count: state.count,);
//   },
// ),

//
// [
// const SizedBox(
// height: 20,
// ),
// BlocBuilder<CartBloc, CartState>(
// builder: (context, state) {
// return BodyCartScreen(count: state.count,);
// },
// ),
// const Divider(
// height: 15,
// color: Colors.white30,
// ),
//
// const SizedBox(
// height: 10,
// ),
//
// ],
