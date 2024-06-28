import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DishToCartRepository {
  final Box<DishToCart> countBox = Hive.box<DishToCart>('count_box');

  Future <void> addCount(String dishId,int count) async {
    countBox.add(
        DishToCart(
          dishId: dishId,
          count: count,
        ));
  }

  Future<List<DishToCart>?> getListDishesToCart(String dishId) async {
    try {
      final listDishes =
      countBox.values.where((element) => element.dishId == dishId).toList();
      return listDishes;
    } catch (e) {
      return null;
    }
  }

  Future<List<DishToCart>?> deleteDish(String dishId) async {
    try {
      final dishIndex = countBox.values.toList().indexWhere((e)=>e.dishId==dishId);
      countBox.deleteAt(dishIndex);
      final dish = countBox.values.where((element) => element.dishId == dishId).toList();
      return dish;
    } catch (e) {
      return null;
    }
  }
}
