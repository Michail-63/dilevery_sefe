import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/models/lists/list_categories.dart';

class RootRepository {

  // Future<Dish>getDish() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   final list
  //   return categories.
  // }

  Future<Category> getCategory(name) async {
    await Future.delayed(Duration(seconds: 2));
    return categories.firstWhere((element) => element.title == name);
  }

  Future<List<Category>> getCategories() async {
    await Future.delayed(Duration(seconds: 2));
    print('dcfasdfc111111');
    return categories;
  }


}