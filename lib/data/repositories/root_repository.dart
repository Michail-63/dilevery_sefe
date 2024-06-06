import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/models/lists/list_categories.dart';

class RootRepository {



  Future<List<Dish>> getDish() async {
    await Future.delayed(Duration(seconds: 2));
    final categoriesList = categories as Map<String, dynamic>;
    final category = categoriesList['Category'] as Map<String, dynamic>;
    final dishesList = category.entries.map((e) {
      final dishesData =
          (e.value as Map<String, dynamic>)['Dish'] as Map<String, dynamic>;
      final price = dishesData['price'];
      final image = dishesData['image'];
      final text = dishesData['text'];

      return Dish(
        title: e.key,
        price: price,
        image: image,
        text: text,
      );
    }).toList();
    return dishesList;
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
