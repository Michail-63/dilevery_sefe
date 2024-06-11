import 'package:delivery/data/models/category.dart';

import 'package:delivery/data/models/lists/list_categories.dart';
import 'package:delivery/data/models/lists/list_new_dishes.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RootRepository {
  final Box<NewDish> newDishBox = Hive.box<NewDish>('new_dish_box');

  Future<List<NewDish>?> getRecommendedDish() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      var list = newDishBox.values
          .where((element) => element.isRecommended == true)
          .toList();

      return list;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<NewDish>?> getPopularDish() async {
    try {
    var list = newDishBox.values
        .where((element) => element.isPopular == true)
        .toList();

      return list;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<NewDish>?> getFavoritesDish() async {
    try {
    var list = newDishBox.values
        .where((element) => element.isFavorites == true)
        .toList();

      return list;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<NewDish>?> getTheBestDish() async {
    try {
    var list = newDishBox.values
        .where((element) => element.isTheBest == true)
        .toList();

      return list;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<NewDish?> getDish(String id) async {
    await Future.delayed(Duration(seconds: 2));
    final dish = newDishBox.values.firstWhere((element) => element.id == id);
    try {
      return dish;
    } catch (e) {
      return null;
    }
  }




  Future<Category> getCategory(name) async {
    await Future.delayed(Duration(seconds: 2));
    return categories.firstWhere((element) => element.title == name);
  }

  Future<List<Category>> getCategories() async {
    await Future.delayed(Duration(seconds: 2));
    return categories;
  }
}

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
