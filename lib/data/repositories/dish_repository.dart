
import 'package:delivery/data/models/dish_model.dart';
import 'package:hive/hive.dart';

class DishRepository {
  final Box<DishModel> dishBox = Hive.box('dish_box');


  Future<DishModel> getBogyDishesToCart(String dishId) async {
    final dish =
    dishBox.values.firstWhere((element) => element.id == dishId);
    return dish;
  }


  Future<List<DishModel>?> getCategoryPizzaDishModal() async {
    final String categoryId = '654dfb40e6d2d0003ccb8a8d';
    try {
      // await Future.delayed(Duration(seconds: 4));
      final listDish = dishBox.values
          .where((element) => element.category == categoryId)
          .toList();

      print('listDish.lenght: ${listDish.length}');
      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }

  Future<List<DishModel>?> getCategoryDishModal() async {
    final String categoryId = '654dfb40e6d2d0003ccb8a8f';
    try {
      // await Future.delayed(Duration(seconds: 4));
      final listDish = dishBox.values
          .where((element) => element.category == categoryId)
          .toList();

      print('listDish.lenght: ${listDish.length}');
      return listDish;
    } catch (e) {
      print('Error = ${e}');
      return null;
    }
  }






  }