import 'package:delivery/data/models/dish_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class AbstractDishRepository{
  Future<List<DishModel>> getDishList();


}