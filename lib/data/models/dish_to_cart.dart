import 'package:delivery/data/models/count_dish_to_cart.dart';

class DishToCart extends CountDishToCart {
  final String title;
  final int price;
  final String image;

  DishToCart({
    required super.dishId,
    required super.count,
    required this.title,
    required this.price,
    required this.image,
  });
}
