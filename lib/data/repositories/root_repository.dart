import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/models/lists/list_categories.dart';

class RootRepository {


  Future <List<Category<List<Dish>>>> getDish(name) async {
    await Future.delayed(const Duration(seconds: 2));
    return name;
  }



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