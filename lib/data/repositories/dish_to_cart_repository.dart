import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:flutter/animation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DishToCartRepository {
  final Box countBox = Hive.box('count_box');

  Future<void> AddCountToDish(String dishId) async {
    var currentCount = countBox.get(dishId) ?? 0;
    await countBox.put(dishId, currentCount +1);
    print('currentCount= ${currentCount+1}');
    print('MapDish.lenght= ${countBox.length}');
  }













}
