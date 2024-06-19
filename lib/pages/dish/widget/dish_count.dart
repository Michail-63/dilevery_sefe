import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DishCount extends StatelessWidget {
  final int count;

  const DishCount({
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                onTap: () {
                  if (count >= 1) {
                    context.read<DishBloc>().add(DecrementCountDishEvent());
                  }
                  print('count = $count');
                },
                child: Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      border: Border.all(
                        color: Colors.white30,
                      )),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      color: color2,
                    ),
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white30,
                )),
                child: Center(
                  child: Text(
                    "$count",
                    style: theme.titleLarge,
                  ),
                ),
              ),
              InkWell(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                onTap: () {
                  context.read<DishBloc>().add(IncrementCountDishEvent());
                  print('count = $count');
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      border: Border.all(
                        color: Colors.white30,
                      )),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: color2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
