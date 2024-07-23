import 'dart:convert';

import 'package:delivery/data/models/dish_model.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class ApiRepository {
  final Box<DishModel> dishBox = Hive.box('dish_box');

  Future<List<DishModel>> getDishList() async {
    var listDishModel = <DishModel>[];
    try {
    List<DishModel> listDishModel = await _fetchGetDishList();
    final dishMap = {for (var e in listDishModel) e.name: e};
    await dishBox.putAll(dishMap);
    } catch (e) {
      return dishBox.values.toList();
    }

    return listDishModel;
  }


  Future<List<DishModel>> _fetchGetDishList() async {
    var headers = {
      'If-Modified-Since': '0',
      'Content-Type': 'application/json'
    };
    final response = await Dio()
        .request('http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000',
        options: Options(
          method: 'GET',
          headers: headers,
        ));

    Iterable dishList = response.data;
    final listDishModel = List<DishModel>.from(
        dishList.map((DishModelJson) => DishModel.fromJson(DishModelJson)));

    for (int i = 0; i < listDishModel.length; i++) {
      print('listDishModel.category: ${listDishModel[i].category}');
    }
    return listDishModel;
  }


  Future<List<DishModel>> getFavoriteDish() async {
    var headers = {
      'If-Modified-Since': '0',
      'Authorization': '{{token}}'
    };
    final response = await Dio()
        .request('http://sandbox.skill-branch.ru/dishes?offset=0&limit=1000/favorite?offset=0&limit=10',
        options: Options(
          method: 'GET',
          headers: headers,
        ));

    Iterable dishList = response.data;
    final listDishModel = List<DishModel>.from(
        dishList.map((DishModelJson) => DishModel.fromJson(DishModelJson)));

    for (int i = 0; i < listDishModel.length; i++) {
      print('listDishModel.category: ${listDishModel[i].category}');
    }
    return listDishModel;
  }



}
