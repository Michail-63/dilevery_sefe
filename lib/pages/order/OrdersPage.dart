import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(title: const Text('Заказы'), actions: [
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
    );
  }
}
