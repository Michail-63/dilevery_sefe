import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/models/lists/list_categories.dart';

class RootRepository {
  Future<List<Dish?>?> getDish() async {
    final dishes = categories.expand((e) => e.dishes);
    print('categories : $categories');
    print('dishes : $dishes');
    await Future.delayed(Duration(seconds: 2));

    final data = dishes as Map<String, dynamic>;
    final dataDish = data['Dish'] as Map<String, dynamic>;
    final dishesList = dataDish.entries
        .map((e) => {
              Dish(
                title: e.key,
                text: (e.value as Map<String, dynamic>)['text'],
                image: (e.value as Map<String, dynamic>)['image'],
                price: (e.value as Map<String, dynamic>)['price'],
              )
            })
        .toList();
    await Future.delayed(Duration(seconds: 2));
    print('dishesList : $dishesList');
    return null;
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
