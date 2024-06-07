
import 'package:hive_flutter/hive_flutter.dart';
part 'dish_to_cart.g.dart';

@HiveType(typeId: 2)


class DishToCart {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final int price;
  @HiveField(3)
  final int count;
  @HiveField(4)
  final String image;

  const DishToCart({
    required this.id,
    required this.title,
    required this.price,
    required this.count,
    required this.image,
  });
}
