import 'package:delivery/Utils/String.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(title: Text(screen6), actions: [
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
