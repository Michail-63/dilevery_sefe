import 'package:delivery/data/repositories/root_repository.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/logotyp.dart';
import 'package:delivery/pages/main/widget/recommended_view.dart';
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
              RecommendedView(),




            ],
          )
      ),
    );
  }
}

class NameCategory extends StatelessWidget {
  const NameCategory({
    super.key,
    required this.name,

  });

  final String name;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text('$name'),
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text('См.все', style: theme.titleSmall),
          ),
        )
      ],
    );
  }
}
