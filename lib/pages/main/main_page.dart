import 'package:delivery/data/repositories/root_repository.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget/scroll_home_screen.dart';

class MainPage extends StatelessWidget {
  MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      MainBloc(RootRepository())
         ..add(MainFetchEvent()),
      child: Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(title: Text('Главная'), actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {
                print("ON TAP 2");
              },
            ),
          ]),
          body: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              return ScrollHomeScreen(categories: state.categories, isloading:state.isloading);
            },
          )),
    );
  }
}
