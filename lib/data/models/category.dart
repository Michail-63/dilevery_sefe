import 'package:delivery/data/models/dish.dart';

class Category {
  String title;
  List<Dish> dishes;

  Category({
    required this.title,
    required this.dishes,
  });
}
