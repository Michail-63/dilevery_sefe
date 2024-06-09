import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/menu/bloc/menu_bloc.dart';
import 'package:delivery/pages/menu/widget/menu_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuBloc(),
      child: Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(title: Text('Меню'), actions: [
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
        body: BlocBuilder<MenuBloc, MenuState>(
          builder: (context, state) {
            return MenuSelection(menu: state.menuItem,);
          },
        ),
      ),
    );
  }
}
