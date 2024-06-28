import 'package:hive_flutter/hive_flutter.dart';

part 'dish_to_cart.g.dart';

@HiveType(typeId: 1)
class DishToCart {
  @HiveField(0)
  final String dishId;
  @HiveField(1)
  final int count;

  DishToCart({
    required this.dishId,
    required this.count,
  });
}
