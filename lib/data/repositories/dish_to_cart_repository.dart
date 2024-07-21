import 'dart:async';
import 'package:delivery/data/models/dish_to_cart.dart';
import 'package:delivery/data/repositories/api_repository.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/new_ dish_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DishToCartRepository {
  final Box countBox = Hive.box('count_box');
  final DishRepository dishRepository;

  DishToCartRepository({
    required this.dishRepository,

  });

  Stream<List<DishToCart>?> countStream() {
    return countBox.watch().asyncMap((e) => getDishToCArt());
  }
  //
  // Future<List<DishToCart>?> getDishToCArt() async {
  //   List<DishToCart> list = [];
  //   countBox.toMap().entries.forEach((e) async {
  //     if (e.value > 0) {
  //       final dish = await dishRepository.getBogyDishesToCart(e.key);
  //       list.add(DishToCart(
  //           id: e.key,
  //           count: e.value,
  //           name: dish.title,
  //           price: dish.price,
  //           image: dish.image));
  //       print(
  //           'key: ${e.key} value: ${e.value} title: ${dish.title} price: ${dish.price} ');
  //     }
  //   });
  //   return list;
  // }

  Future<List<DishToCart>?> getDishToCArt() async {
    List<DishToCart> list = [];
    countBox.toMap().entries.forEach((e) async {
      if (e.value > 0) {
        final dish = await dishRepository.getBogyDishesToCart(e.key);
        list.add(DishToCart(
            id: e.key,
            count: e.value,
            name: dish.name,
            price: dish.price,
            image: dish.image));
        // print(
        //     'key: ${e.key} value: ${e.value} title: ${dish.name} price: ${dish.price} ');
      }
    });
    return list;
  }


  Future<void> AddCountToDish(String dishId) async {
    var currentCount = countBox.get(dishId) ?? 0;
    final dishToCart = await countBox.put(dishId, currentCount + 1);
    print("DishId = ${dishId}  currentCount= ${currentCount + 1}");
    print('MapDish.lenght= ${countBox.length}');
    return dishToCart;
  }

  Future<void> DecrementCountToDish(String dishId) async {
    var currentCount = countBox.get(dishId) ?? 0;

    final dishToCart = await countBox.put(dishId, currentCount - 1);
    print("DishId = ${dishId}  currentCount= ${currentCount - 1}");
    print('MapDish.lenght= ${countBox.length}');
    return dishToCart;
  }

  Future<void> updatedCountDish(String dishId, int count) async {
    var currentCount = countBox.get(dishId) ?? 0;
    final updatedCount = await countBox.put(dishId, currentCount + count);
    print("DishId = ${dishId}  currentCount= ${currentCount + count}");
    print('MapDish.lenght= ${countBox.length}');
    return updatedCount;
  }

// values.cast<DishToCart>().toList();

// final listDish =
//     .values.where((element) => element.count >= 1).toList();
//
// final dishIndex = countBox.values
//     .toList()
//     .indexWhere((element) => element.dishId == dishId);
// final dish =
// countBox.values.firstWhere((element) => element.dishId == dishId);
// final newDish = dish.copyWith(count: count);
// await countBox.putAt(dishIndex, newDish);
// return newDish;
}
