import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';

part 'count_dish_to_cart.g.dart';

@HiveType(typeId: 3)
class CountDishToCart {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final int count;

  CountDishToCart({
    required this.id,
    required this.count,
  });

  CountDishToCart copyWith({
    String? dishId,
    int? count,
  }) {
    return CountDishToCart(
      id: dishId ?? this.id,
      count: count ?? this.count,
    );
  }

}



