import 'package:delivery/data/models/count_dish_to_cart.dart';

class DishToCart extends CountDishToCart {
  final String name;
  final int price;
  final String image;

  DishToCart({
    required super.id,
    required super.count,
    required this.name,
    required this.price,
    required this.image,
  });
}
