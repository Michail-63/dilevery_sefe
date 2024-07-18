import 'dart:convert';

import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/models/lists/list_new_dishes.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/abstract_dish_repository.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class ApiRepository implements AbstractDishRepository {
  final Dio dio;
  final Box<DishModel> dishBox;

  ApiRepository({
    required this.dio,
    required this.dishBox,
  });

  @override
  Future<List<DishModel>> getDishList() async {
    var listDishModel = <DishModel>[];
    try {
      List<DishModel> listDishModel = await _fetchDishModelList();
      final dishMap = {for (var e in listDishModel) e.name: e};
      await dishBox.putAll(dishMap);
    } catch (e) {
      return dishBox.values.toList();
    }

    return listDishModel;
  }

  Future<List<DishModel>> _fetchDishModelList() async {
    var headers = {
      'If-Modified-Since': '0',
      'Content-Type': 'application/json'
    };
    final response = await dio.request(
        'http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000',
        options: Options(
          method: 'GET',
          headers: headers,
        ));

    Iterable dishList = response.data;
    final listDishModel = List<DishModel>.from(
        dishList.map((DishModelJson) => DishModel.fromJson(DishModelJson)));

    for (int i = 0; i < listDishModel.length; i++) {
      print(
          'listDishModel.id: ${listDishModel[i].id}, image:${listDishModel[i].image} ');
    }
    return listDishModel;
  }
}
