import 'package:delivery/Utils/String.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget_cart/body_cart_screen.dart';
import 'widget_cart/bottom_battom.dart';
import 'widget_cart/promocod.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final  theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => CartBloc(),
      child: Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(title: Text(screen4), actions: [
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
              Expanded(
                child: ListView(
                  controller: ScrollController(
                    keepScrollOffset: false,
                  ),
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return BodyCartScreen(count: state.count,);
                      },
                    ),
                    Divider(
                      height: 15,
                      color: Colors.white30,
                    ),
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return BodyCartScreen(count: state.count,);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Promocod(),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Итого",
                      style: theme.bodyLarge
                    ),
                  ),
                  SizedBox(
                    width: 185,
                  ),
                  Container(
                    child: Text(
                      "2540 \u20BD",
                      style:theme.titleLarge

                    ),
                  ),

                ],
              )
            ],
          ),
          bottomNavigationBar: BottomBattom()),
    );
  }
}
