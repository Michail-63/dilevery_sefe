import 'package:delivery/data/models/dish.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'cart_item.g.dart';

@HiveType(typeId: 2)
class CartItem {
  @HiveField(0)
  Dish dish;
  @HiveField(1)
  int count;

  CartItem({
    required this.dish,
    required this.count,
  });
}
