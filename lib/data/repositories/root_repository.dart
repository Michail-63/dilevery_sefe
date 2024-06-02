import 'package:delivery/data/models/category_data.dart';
import 'package:delivery/data/models/lists/list_categories.dart';

class RootRepository {

  Future<Category> getCategory(name) async {
    await Future.delayed(Duration(seconds: 3));
    return categories.firstWhere((element) => element.title == name);
  }

  Future<List<Category>> getCategories() async {
    await Future.delayed(Duration(seconds: 3));
    print('dcfasdfc111111');
    return categories;
  }


}