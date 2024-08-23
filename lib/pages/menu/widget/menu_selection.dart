import 'package:delivery/pages/menu/bloc/menu_bloc.dart';
import 'package:delivery/pages/menu/widget/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuSelection extends StatelessWidget {

  const MenuSelection({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MenuBloc, MenuState>(
        builder: (context, state) {
          return GridView.count(
            controller: ScrollController(
                keepScrollOffset: false
            ),
            padding: EdgeInsets.only(top: 30.0),
            crossAxisCount: 3,
            children: [
              for (var item in state.menuItem)
                MenuItem(item: item),
            ],
          );
        }
      ),
    );
  }
}
