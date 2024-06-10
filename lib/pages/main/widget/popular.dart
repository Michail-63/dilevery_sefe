import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:delivery/pages/main/widget/row_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Popular extends StatelessWidget {

  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            for (var item in state.popularDishes) RowCategory(item: item)
          ]));
    });
  }
}
