
import 'package:hive_flutter/hive_flutter.dart';
part 'dish_to_baket.g.dart';

@HiveType(typeId: 2)


class DishToBaket {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int price;
  @HiveField(2)
  final int item;
  @HiveField(3)
  final String image;

  const DishToBaket({
    required this.title,
    required this.price,
    required this.item,
    required this.image,
  });
}
