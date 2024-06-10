import 'package:delivery/data/repositories/root_repository.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/favorites.dart';
import 'package:delivery/pages/main/widget/logotyp.dart';
import 'package:delivery/pages/main/widget/name_category.dart';
import 'package:delivery/pages/main/widget/popular.dart';
import 'package:delivery/pages/main/widget/recommended.dart';
import 'package:delivery/pages/main/widget/the_best.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(RootRepository())..add(MainFetchEvent()),
      child: Scaffold(
          drawer: DrawerPage(),
          appBar: AppBar(title: Text('Главная'), actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {
                print("jjfasf");
              },
            ),
          ]),
          body:
          ListView(
            children: [
              Logotyp(),
              NameCategory(name:'Рекомендуемое'),
              Recommended(),
              NameCategory(name:'Популярное'),
              Popular(),
              NameCategory(name:'Лучшее'),
              TheBest(),
              NameCategory(name:'Избранное'),
              Favorites(),





            ],
          )
      ),
    );
  }
}
