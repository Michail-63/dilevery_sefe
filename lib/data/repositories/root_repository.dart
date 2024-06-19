import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/lists/list_categories.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RootRepository {
  final Box<NewDish> newDishBox = Hive.box<NewDish>('new_dish_box');

  Future<NewDish?> getDish(String id) async {
    // await Future.delayed(Duration(seconds: 2));
    try {
      final dish = newDishBox.values.firstWhere((element) => element.id == id);
      // print('Dish = ${dish.id},${dish.title},  ID = ${id} , count = ${dish.count}');
      return dish;
    } catch (e) {
      return null;
    }
  }

  Future<NewDish> updatedCountDish(String id, int count) async {
    // print('refreshCountDish = $id');
    // for (var o in newDishBox.values) {
    //   print('DishWalio = ${o.id}');
    // }
    final dishIndex =
    newDishBox.values.toList().indexWhere((element) => element.id == id);
    final dish = newDishBox.values.firstWhere((element) => element.id == id);
    // print('Dish = ${dish}');
    final newDish = dish.copyWith(count: count);
    await newDishBox.putAt(dishIndex, newDish);
    return newDish;
  }




  Future<List<NewDish>?> getRecommendedDish() async {
    try {
      // await Future.delayed(Duration(seconds: 4));
      final listDish = newDishBox.values
          .where((element) => element.isRecommended == true)
          .toList();

      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<NewDish>?> getPopularDish() async {
    try {
      // await Future.delayed(Duration(seconds: 2));
      final listDish = newDishBox.values
          .where((element) => element.isPopular == true)
          .toList();

      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<NewDish>?> getFavoritesDish() async {
    try {
      // await Future.delayed(Duration(seconds: 2));
      final listDish = newDishBox.values
          .where((element) => element.isFavorites == true)
          .toList();

      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<NewDish>?> getTheBestDish() async {
    try {
      // await Future.delayed(Duration(seconds: 2));
      final listDish = newDishBox.values
          .where((element) => element.isTheBest == true)
          .toList();

      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }
}

//
//   Future<Category> getCategory(name) async {
//     await Future.delayed(Duration(seconds: 2));
//     return categories.firstWhere((element) => element.title == name);
//   }
//
//   Future<List<Category>> getCategories() async {
//     await Future.delayed(Duration(seconds: 2));
//     return categories;
//   }
// }

//
// Future<Dish?> getDish(String id) async {
//   await Future.delayed(Duration(seconds: 2));
//   final dishes = categories.expand((e) => e.dishes).toList();
//   print('dishes : $dishes');
//   try {
//     return dishes.firstWhere((element) => element.id == id);
//   } catch (e) {
//     return null;
//   }
// }
//
