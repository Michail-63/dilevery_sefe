import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/caregory_row_view.dart';
import 'package:delivery/pages/main/widget/logotyp.dart';
import 'package:delivery/pages/main/widget/name_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyMainPage extends StatelessWidget {
  const BodyMainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return state.isloading
            ? Container(
                width: double.infinity,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : ListView(
                children: [
                  Logotyp(),
                  NameCategory(
                    name: 'Пицца',
                    category: state.recommendedDishes,
                  ),
                  CaregoryRowView(
                    category: state.recommendedDishes,
                  ),
                  // NameCategory(
                  //   name: 'Лучшее',
                  //   category: state.theBestDishes,
                  // ),
                  // CaregoryRowView(
                  //   category: state.theBestDishes,
                  // ),
                  // NameCategory(
                  //   name: 'Избранное',
                  //   category: state.favoritesDishes,
                  // ),
                  // CaregoryRowView(
                  //   category: state.favoritesDishes,
                  // ),
                  NameCategory(
                    name: 'Популярное',
                    category: state.popularDishes,
                  ),
                  CaregoryRowView(
                    category: state.popularDishes,
                  ),
                ],
              );
      },
    );
  }
}
