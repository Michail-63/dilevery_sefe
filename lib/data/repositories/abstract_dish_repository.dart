import 'package:delivery/data/models/dish_model.dart';

abstract class AbstractDishRepository{
  Future<List<DishModel>> getDishList();
}