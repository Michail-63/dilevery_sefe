import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/models/lists/list_categories.dart';
import 'package:delivery/data/models/lists/list_new_dishes.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RootRepository {
  late Box<int> box;

  Future init() async {
    await Hive.openBox('dishBox');
  }


  Future<List<NewDish>?> getRecommendedDish() async {
    var list =
        listDish.where((element) => element.isRecommended == true).toList();
    try {
      return list;
    } catch (e) {
      return null;
    }
  }

  Future<List<NewDish>?> getPopularDish() async {
    var list = listDish.where((element) => element.isPopular == true).toList();
    try {
      return list;
    } catch (e) {
      return null;
    }
  }

  Future<List<NewDish>?> getFavoritesDish() async {
    var list =
        listDish.where((element) => element.isFavorites == true).toList();
    try {
      return list;
    } catch (e) {
      return null;
    }
  }

  Future<List<NewDish>?> getTheBestDish() async {
    var list = listDish.where((element) => element.isTheBest == true).toList();
    try {
      return list;
    } catch (e) {
      return null;
    }
  }

  Future<Dish?> getDish(String id) async {
    await Future.delayed(Duration(seconds: 2));
    final dishes = categories.expand((e) => e.dishes).toList();
    print('dishes : $dishes');
    try {
      return dishes.firstWhere((element) => element.id == id);
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
