import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/models/lists/list_categories.dart';

class RootRepository {




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
